import 'package:flutter/material.dart';

import '../../Globals/globals.dart';

// appbar text style
TextStyle appBarTextStyle() {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

// decoration for container with shadow
BoxDecoration containerDecortionWithShadow(bool needBorder) {
  return BoxDecoration(
    color: colorsControllers.whiteColor.value.withOpacity(0.5),
    borderRadius: BorderRadius.circular(8),
    border: needBorder
        ? Border.all(
            color: colorsControllers.primaryColor.value,
            width: 1,
          )
        : null,
    boxShadow: [
      BoxShadow(
        offset: const Offset(0, 4),
        blurRadius: 4,
        spreadRadius: 0,
        color: Colors.black.withOpacity(0.14),
      ),
    ],
  );
}

// decoration for container with shadow
BoxDecoration containerDecortionWithShadowWithoutBorderRadius(bool needBorder) {
  return BoxDecoration(
    color: colorsControllers.whiteColor.value,
    borderRadius: BorderRadius.circular(4),
    border: needBorder
        ? Border.all(
            color: colorsControllers.primaryColor.value,
            width: 1,
          )
        : null,
    boxShadow: [
      BoxShadow(
        offset: const Offset(0, 4),
        blurRadius: 4,
        spreadRadius: 0,
        color: Colors.black.withOpacity(0.14),
      ),
    ],
  );
}

// neumorphic style for login screen fields
InputDecoration neumorphicStyle(String hint) {
  return InputDecoration(
    counterText: "",
    fillColor: colorsControllers.whiteColor.value,
    contentPadding: const EdgeInsets.only(
      left: 10,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: colorsControllers.blackColor.value.withOpacity(0.1),
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: colorsControllers.blackColor.value.withOpacity(0.1),
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: colorsControllers.blackColor.value.withOpacity(0.1),
        width: 1,
      ),
    ),
    hintText: hint,
    hintMaxLines: 1,
    hintStyle: TextStyle(
      color: colorsControllers.blackColor.value.withOpacity(0.6),
      fontWeight: FontWeight.normal,
      fontFamily: "Roboto",
    ),
  );
}
