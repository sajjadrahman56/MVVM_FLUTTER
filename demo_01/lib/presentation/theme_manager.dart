
import 'package:demo_01/presentation/color_manager.dart';
import 'package:demo_01/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){

  return ThemeData(
    // main colors of the app

    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    //accentColor: ColorManager.darkGray, // depricated
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // card view theme

    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s12,
    )

    // app bar theme

    // button theme

    // Text theme

    // input decoration theme ( text form field )
  );

}