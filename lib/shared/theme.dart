import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kBlackColor= Color(0xff1E232C);
Color kWhiteColor = Color(0xffFFFFFF);
Color kCyanColor = Color(0xff35C2C1);

TextStyle blackTextStyle = GoogleFonts.urbanist(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.urbanist(
  color: kWhiteColor,
);
TextStyle cyanTextStyle = GoogleFonts.urbanist(
  color: kCyanColor,
);

TextStyle primaryText = GoogleFonts.urbanist(
  color: kBlackColor, fontSize: 30, fontWeight: bold
);
TextStyle textFont16 = GoogleFonts.urbanist(
  color: kBlackColor, fontSize: 16, fontWeight: bold
);
TextStyle textFont20 = GoogleFonts.urbanist(
  color: kBlackColor, fontSize: 20, fontWeight: bold
);
TextStyle textFont14 = GoogleFonts.urbanist(
  color: kBlackColor, fontSize: 14, fontWeight: light
);


FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

