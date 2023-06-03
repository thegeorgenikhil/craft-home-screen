import 'package:flutter/material.dart';

class Styles {
  static const _fontNameDefault = "Inter";
  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 16.0;
  static final _textColorDefault = _hexToColor("121212");
  static final _textColorStrong = _hexToColor("333333");

  static final sectionHeading = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
    fontWeight: FontWeight.w600,
  );

  static final sectionContent = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
    fontWeight: FontWeight.w400,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
