import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarTitleText extends StatelessWidget {
  final String? titleText;
  const AppbarTitleText({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        titleText!,
        style: GoogleFonts.ubuntu(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
