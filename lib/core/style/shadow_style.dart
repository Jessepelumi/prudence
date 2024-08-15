import 'package:flutter/material.dart';
import 'package:prudence/core/utils/colors.dart';

class ShadowStyle {
  static final customShadow = BoxShadow(
    color: lightGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}