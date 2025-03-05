import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prudence/src/core/utils/colors.dart';
import 'package:prudence/src/core/utils/helper_functions.dart';

class ShadowStyle {
  final BuildContext context;

  ShadowStyle(this.context);

  BoxShadow get customShadow {
    final dark = HelperFunctions.isDarkMode(context);

    return BoxShadow(
      color: dark ? softGrey.withOpacity(0.1) : darkGrey.withOpacity(0.1),
      blurRadius: 10,
      spreadRadius: 5,
      offset: const Offset(0, 4),
    );
  }
}
