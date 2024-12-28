import 'package:flutter/material.dart';

class PaddingConstants {
  // Standard padding
  static const EdgeInsets all16 = EdgeInsets.all(16.0);

  // Horizontal padding
  static const EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16.0);

  // Vertical padding
  static const EdgeInsets vertical16 = EdgeInsets.symmetric(vertical: 16.0);

  // Custom padding: top, left, bottom, right
  static const EdgeInsets allCustom = EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0);

  // Padding for different screen sizes (can be customized)
  static const EdgeInsets smallScreen = EdgeInsets.all(12.0);
  static const EdgeInsets mediumScreen = EdgeInsets.all(16.0);
  static const EdgeInsets largeScreen = EdgeInsets.all(20.0);
}
