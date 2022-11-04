import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class GlobalVariables {
  static LinearGradient mix = LinearGradient(
    colors: [
      HexColor("#282B85E5"),
  HexColor("#9A1D80E5"),

    ],
    stops: [
      0.5,
      1.0
    ],
  );
  static Color magenta = HexColor("#9D1C7F");
  static Color brightBlue = HexColor("#2B2A85");

}
