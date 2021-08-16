import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Palletes {
  static const PrimaryColor = Color(0xFF1a95b0);
}

class TextStyles {
  static final titleNormalFontStyle = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final normalFontStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final titleBoldFontStyle = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final boldFontStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final titleBlackNormalFontStyle = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final blackNormalFontStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final titleBlackboldFontStyle = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final blackBoldFontStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final ratingFontStyle = GoogleFonts.montserrat(
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );
}

class DokterTextStyles {
  static final namaDokterFontStyle = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final namaDokterDetailFontStyle = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final jabatanDokterFontStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static final jabatanDokterDetailFontStyle = GoogleFonts.montserrat(
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static final ratingDokterFontStyle = GoogleFonts.montserrat(
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static final aboutDokterFontStyle = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Palletes.PrimaryColor,
  );

  static final detailDokterFontStyle = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
}
