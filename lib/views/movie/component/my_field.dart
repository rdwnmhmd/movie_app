import 'package:flutter/material.dart';
import '../component/myTypography.dart';
import '../component/my_colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      required this.prefixIcon,
      required this.hintText,
      this.suffixIcon,
      this.obscureText})
      : super(key: key);

  final Widget prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: MyTypography.textMedium,
        fillColor: MyColors.grey6,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
