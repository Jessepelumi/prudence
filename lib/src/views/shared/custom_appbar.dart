import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:prudence/src/core/utils/sizes.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.actions,
  });

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.all(small),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const PhosphorIcon(
            PhosphorIconsBold.caretLeft,
          ),
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        appbarHeight(),
      );
}
