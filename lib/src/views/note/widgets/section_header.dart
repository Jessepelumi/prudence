import 'package:flutter/material.dart';
import 'package:prudence/src/core/utils/sizes.dart';

class NoteSectionHeader extends StatefulWidget {
  const NoteSectionHeader({
    super.key,
    required this.month,
    required this.isCollapsed,
    required this.onToggle,
  });

  final String month;
  final bool isCollapsed;
  final VoidCallback onToggle;

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
            onTap: widget.onToggle,
            child: Text(
              widget.isCollapsed ? "Expand" : "Collapse",
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
