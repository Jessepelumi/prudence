import 'package:flutter/material.dart';
import 'package:prudence/src/core/utils/colors.dart';
import 'package:prudence/src/core/utils/helper_functions.dart';
import 'package:prudence/src/core/utils/sizes.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: small,
        horizontal: small * 1.5,
      ),
      decoration: BoxDecoration(
        color: dark ? darkGrey : lightGrey,
        borderRadius: BorderRadius.circular(small),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Product Meeting",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            "Note details",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
