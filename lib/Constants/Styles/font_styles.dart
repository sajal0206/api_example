import 'package:flutter/material.dart';

import '../../Globals/globals.dart';

class FontStyles {
  TextStyle mediumWhiteTextStyle = TextStyle(
    color: colorsControllers.whiteColor.value,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
  );

  TextStyle mediumBlackTextStyle = TextStyle(
    color: colorsControllers.blackColor.value,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
  );

  TextStyle regularWhiteTextStyle = TextStyle(
    color: colorsControllers.whiteColor.value,
    fontSize: 14,
    fontFamily: "Poppins",
  );

  TextStyle regularBlackTextStyle = TextStyle(
    color: colorsControllers.blackColor.value,
    fontSize: 14,
    fontFamily: "Poppins",
  );

  TextStyle buttonWhiteTextStyle = TextStyle(
    color: colorsControllers.whiteColor.value,
    fontSize: 16,
    fontFamily: "Poppins",
  );

  TextStyle buttonBlackTextStyle = TextStyle(
    color: colorsControllers.blackColor.value,
    // fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
  );

  TextStyle headingTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins",
  );
}
