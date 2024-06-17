
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {

  static TextStyle headline = GoogleFonts.inter(
                  fontSize: 20,
                  //textStyle: const TextStyle(fontStyle: FontStyle.normal),
                  color: const Color.fromRGBO(62, 54, 40,1),
                  fontWeight: FontWeight.w700);
  static TextStyle taskDescription = GoogleFonts.robotoSlab(
                  fontSize: 16,
                  fontWeight: FontWeight.w400

  );

}