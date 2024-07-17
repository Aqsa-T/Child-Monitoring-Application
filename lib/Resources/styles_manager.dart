import 'package:flutter/material.dart';
import 'fonts_manager.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.getFont(
    'Poppins',
    textStyle: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}


// regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

// light style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

// semiBold style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}