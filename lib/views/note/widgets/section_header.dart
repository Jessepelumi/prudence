import 'package:flutter/material.dart';
import 'package:prudence/core/utils/sizes.dart';

class NoteSectionHeader extends StatefulWidget {
  const NoteSectionHeader({
    super.key,
    required this.month,
  });

  final String month;

  @override
  State<NoteSectionHeader> createState() => _NoteSectionHeaderState();
}

class _NoteSectionHeaderState extends State<NoteSectionHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: small),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.month,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Collapse",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
