import 'package:flutter/material.dart';

import '../Constants/Styles/styled_text.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
    required this.buttonText,
    this.borderRadius = 8,
    this.btnColor = const Color(0xFF757575),
  });
  final String buttonText;
  final double borderRadius;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFF0F0F0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Center(
          child: StyledTextSize18(
            text: buttonText,
            color: btnColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
