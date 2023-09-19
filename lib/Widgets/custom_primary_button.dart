import 'package:flutter/material.dart';

import '../Utils/spacings.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTapFunction,
    required this.buttonText,
    this.buttonColor = const Color(0xFF2d2e2f),
    this.borderColor = const Color(0xFF2d2e2f),
    this.textColor = const Color(0XFFFFFFFF),
    this.borderRadius = 15,
    this.borderThickness = 1,
    this.fontSize = 16,
    this.needIcon = false,
    this.needBorder = false,
    this.iconWidget,
  });
  final VoidCallback onTapFunction;
  final String buttonText;
  final Color buttonColor, textColor, borderColor;
  final double borderRadius, fontSize, borderThickness;
  final bool needIcon, needBorder;
  final Icon? iconWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: MaterialButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: needBorder
              ? BorderSide(
                  color: borderColor,
                  width: borderThickness,
                )
              : BorderSide.none,
        ),
        elevation: 0,
        onPressed: onTapFunction,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (needIcon) ...[
              iconWidget!,
              gap(5),
            ],
            Expanded(
              flex: needIcon ? 0 : 1,
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                ),
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
