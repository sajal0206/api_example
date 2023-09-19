import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import '../Constants/Styles/styled_text.dart';

// function to show success toast message
void showSuccessToast(String title, String description, BuildContext context) {
  MotionToast.success(
    position: MotionToastPosition.top,
    title: StyledHeadingText(
      heading: title,
      fontSize: 16,
    ),
    description: StyledTextSize18(
      text: description,
      fontSize: 14,
      textAlign: TextAlign.start,
    ),
  ).show(context);
}

// function to show error toast message
void showErrorToast(String title, String description, BuildContext context) {
  MotionToast.error(
    position: MotionToastPosition.top,
    title: StyledHeadingText(
      heading: title,
      fontSize: 16,
    ),
    description: StyledTextSize18(
      text: description,
      fontSize: 14,
      textAlign: TextAlign.start,
    ),
  ).show(context);
}

// function to show warning toast message
void showWarningToast(String title, String description, BuildContext context) {
  MotionToast.warning(
    position: MotionToastPosition.top,
    title: StyledHeadingText(
      heading: title,
      fontSize: 16,
    ),
    description: StyledTextSize18(
      text: description,
      fontSize: 14,
      textAlign: TextAlign.start,
    ),
  ).show(context);
}
