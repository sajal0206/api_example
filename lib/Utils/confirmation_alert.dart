import 'package:flutter/material.dart';

import '../Constants/Styles/styled_text.dart';
import '../Globals/globals.dart';
import '../Widgets/cancel_button.dart';
import '../Widgets/confirmation_button.dart';
import 'spacings.dart';

void showConfirmationAlert(
  BuildContext context,
  String headingText,
  VoidCallback confirmationFunction,
) {
  showDialog(
    barrierColor: colorsControllers.blackColor.value.withOpacity(0.2),
    context: context,
    builder: (context) => AlertDialog(
      surfaceTintColor: colorsControllers.whiteColor.value,
      backgroundColor: colorsControllers.whiteColor.value,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.all(30),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            child: StyledHeadingText(
              heading: headingText,
              fontSize: 20,
            ),
          ),
          spacing(10),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: CancelButton(
                    buttonText: "Cancel",
                    btnColor: colorsControllers.blackColor.value,
                  ),
                ),
              ),
              gap(10),
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: ConfirmationButton(
                    onTap: confirmationFunction,
                    buttonText: "Confirm",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
