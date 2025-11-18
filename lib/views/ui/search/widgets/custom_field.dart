import 'package:flutter/material.dart';
import 'package:jobhub_mobile/views/common/exports.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.keyboard,
    this.suffixIcon,
    this.obscureText,
    this.onEditingComplete,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboard;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function()? onEditingComplete;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kOrange,
      child: TextField(
        keyboardType: keyboard,
        obscureText: obscureText ?? false,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          hintText: hintText.toUpperCase(),
          suffixIcon: suffixIcon,
          suffixIconColor: kLight,
          hintStyle: appFontStyle(16, kLight, FontWeight.w500),
          // contentPadding: EdgeInsets.only(left: 24),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.white, width: 0.5),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.red, width: 0.5),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.grey, width: 0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
          border: InputBorder.none,
        ),
        controller: controller,
        cursorHeight: 25,
        style: appFontStyle(14, kLight, FontWeight.w500),
        onSubmitted: validator,
      ),
    );
  }
}
