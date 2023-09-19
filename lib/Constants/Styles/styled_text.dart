import 'package:flutter/material.dart';

import '../../Globals/globals.dart';

// custom styled text used under heading at the top
class StyledTextSize18 extends StatelessWidget {
  const StyledTextSize18({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.textAlign = TextAlign.center,
    this.maxLine = 10,
  });

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: fontStyles.regularBlackTextStyle.copyWith(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// for text fields inside text
class FieldText extends StatelessWidget {
  const FieldText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: fontStyles.regularWhiteTextStyle.copyWith(
        color: const Color(0XFF939495),
        fontSize: 14,
      ),
    );
  }
}

// custom styled heading widget
class StyledHeadingText extends StatelessWidget {
  const StyledHeadingText({
    super.key,
    required this.heading,
    this.fontSize = 20,
    this.textAlignCenter = false,
    this.fontColor = Colors.black,
    this.maxLines,
  });
  final String heading;
  final double fontSize;
  final bool textAlignCenter;
  final Color fontColor;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: fontStyles.headingTextStyle.copyWith(
        color: fontColor,
        fontSize: fontSize,
      ),
      textAlign: textAlignCenter ? TextAlign.center : TextAlign.start,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// custom styled sub-heading widget
class StyledSubHeadingText extends StatelessWidget {
  const StyledSubHeadingText({
    super.key,
    required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: fontStyles.mediumBlackTextStyle,
    );
  }
}
