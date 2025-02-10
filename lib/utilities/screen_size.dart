import 'package:flutter/material.dart';

class ScreenSize {
  static double screenwidth = 0;
  static double screenHeight = 0;
  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;

  static void init(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    blockSizeHorizontal = screenwidth / 100; // 1% of the width
    blockSizeVertical = screenHeight / 100; // 1% of the height

    // print("Screen Width: $screenwidth");
    // print("Screen Height: $screenHeight");
    // print("Block Size Horizontal: $blockSizeHorizontal");
    // print("Block Size Vertical: $blockSizeVertical");
  }
}
