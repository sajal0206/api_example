import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Globals/globals.dart';

void showOverlay(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: colorsControllers.transparentColor.value,
      surfaceTintColor: colorsControllers.transparentColor.value,
      content: Center(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: colorsControllers.primaryColor.value,
          ),
          padding: const EdgeInsets.all(15),
          child: CircularProgressIndicator(
            color: colorsControllers.whiteColor.value,
          ),
        ),
      ),
    ),
  );
}

void showOverlayWithoutContext() {
  Get.generalDialog(
    barrierDismissible: false,
    pageBuilder: (context, animation, secondaryAnimation) => AlertDialog(
      backgroundColor: colorsControllers.transparentColor.value,
      surfaceTintColor: colorsControllers.transparentColor.value,
      content: Center(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: colorsControllers.primaryColor.value,
          ),
          padding: const EdgeInsets.all(15),
          child: CircularProgressIndicator(
            color: colorsControllers.whiteColor.value,
          ),
        ),
      ),
    ),
  );
}
