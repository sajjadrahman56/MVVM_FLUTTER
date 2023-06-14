
import 'package:demo_01/presentation/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontsize , String fontFamily , FontWeight fontWeight,Color color ){
  return TextStyle(fontSize: fontsize, fontFamily: fontFamily , fontWeight: fontWeight,color: color);
}

// regular text

TextStyle getRegularTextStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize, FontsConstrain.fontFamily, FontWeightManager.regular, color);
}

// light text

TextStyle getLightTextStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize, FontsConstrain.fontFamily, FontWeightManager.light, color);
}

// bold text

TextStyle getBoldTextStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize, FontsConstrain.fontFamily, FontWeightManager.bold, color);
}

// semi-bold text

TextStyle getSemiBoldTextStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize, FontsConstrain.fontFamily, FontWeightManager.semiBold, color);
}

// Meduim  text

TextStyle getMedimTextStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize, FontsConstrain.fontFamily, FontWeightManager.medium, color);
}
