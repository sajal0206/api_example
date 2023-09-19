import 'package:flutter/material.dart';

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double inBodyHorizontalBodyPadding(BuildContext context) {
  return MediaQuery.of(context).size.width / 20;
}

double horizontalBodyPadding(BuildContext context) {
  return MediaQuery.of(context).size.width / 30;
}

double horizontalBodyPadding2(BuildContext context) {
  return MediaQuery.of(context).size.width / 45;
}
