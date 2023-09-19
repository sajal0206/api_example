import 'package:flutter/material.dart';

import '../Constants/Styles/styled_text.dart';
import '../Globals/globals.dart';

class ConfirmationButton extends StatelessWidget {
  const ConfirmationButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });
  final VoidCallback onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: colorsControllers.primaryColor.value,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: StyledTextSize18(
            text: buttonText,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: colorsControllers.whiteColor.value,
          ),
        ),
      ),
    );
  }
}
