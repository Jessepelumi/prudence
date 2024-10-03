import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/core/utils/colors.dart';
import 'package:prudence/core/utils/sizes.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    super.key,
    required this.title,
    required this.details,
    required this.timeStamp,
    required this.onTap,
    this.isFavorite = false,
  });

  final String title, details, timeStamp;
  final VoidCallback onTap;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        timeStamp,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const PhosphorIcon(PhosphorIconsBold.dot),
                      Expanded(
                        child: Text(
                          details,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isFavorite)
              const Padding(
                padding: EdgeInsets.only(right: small),
                child: PhosphorIcon(
                  PhosphorIconsFill.star,
                  size: medium,
                  color: gold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
