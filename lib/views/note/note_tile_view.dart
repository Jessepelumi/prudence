import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
//import 'package:prudence/core/style/shadow_style.dart';
import 'package:prudence/core/utils/colors.dart';
import 'package:prudence/core/utils/helper_functions.dart';
import 'package:prudence/core/utils/sizes.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    super.key,
    required this.title,
    required this.details,
    required this.timeStamp,
    required this.onTap,
    this.isFavorite = false,
    required this.isTagged,
    this.color,
  });

  final String title, details, timeStamp;
  final VoidCallback onTap;
  final bool isFavorite;
  final bool isTagged;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: dark ? darkGrey : lightGrey,
          //boxShadow: [ShadowStyle(context).customShadow],
          borderRadius: const BorderRadius.all(
            Radius.circular(small),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: small,
              decoration: BoxDecoration(
                color: isTagged ? color : softGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(small),
                  topRight: Radius.circular(small),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(small),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                      ),
                      if (isFavorite)
                        const PhosphorIcon(
                          PhosphorIconsFill.star,
                          size: medium,
                          color: gold,
                        ),
                    ],
                  ),
                  Text(
                    details,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  const SizedBox(height: extraSmall),
                  Text(
                    timeStamp,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
