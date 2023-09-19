import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
    this.color = const Color(0XFFCBC4C4),
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: color,
    );
  }
}
