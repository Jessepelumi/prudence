import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/src/core/utils/colors.dart';
import 'package:prudence/src/core/utils/helper_functions.dart';
import 'package:prudence/src/core/utils/sizes.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: medium,
          vertical: small * 1.2,
        ),
        decoration: BoxDecoration(
          color: dark ? darkGrey : lightGrey,
          borderRadius: BorderRadius.circular(small * 1.2),
        ),
        child: Row(
          children: [
            // search icon
            const PhosphorIcon(
              PhosphorIconsRegular.magnifyingGlass,
            ),

            // search field
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: extraSmall / 1.5,
                    horizontal: small * 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
