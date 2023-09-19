import 'package:flutter/material.dart';

import '../Globals/globals.dart';

class CustomFilterTextField extends StatefulWidget {
  const CustomFilterTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.textInputType = TextInputType.name,
    this.isPassword = false,
    this.isMultiline = false,
    required this.onSubmit,
  });
  final String hintText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool isPassword, isMultiline;
  final VoidCallback onSubmit;

  @override
  State<CustomFilterTextField> createState() => _CustomFilterTextFieldState();
}

class _CustomFilterTextFieldState extends State<CustomFilterTextField> {
  bool _isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      maxLines: widget.isMultiline ? null : 1,
      obscureText: widget.isPassword ? _isPasswordHidden : false,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 12,
        ),
        labelText: widget.hintText,
        labelStyle: fontStyles.regularWhiteTextStyle.copyWith(
          color: colorsControllers.primaryColor.value,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: colorsControllers.primaryColor.value,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
            color: colorsControllers.primaryColor.value,
          ),
        ),
        suffix: Visibility(
          visible: widget.isPassword,
          child: InkWell(
            onTap: () {
              setState(() {
                _isPasswordHidden = !_isPasswordHidden;
              });
            },
            child: Icon(
              _isPasswordHidden
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
            ),
          ),
        ),
      ),
      onFieldSubmitted: (value) {
        widget.onSubmit();
      },
    );
  }
}
