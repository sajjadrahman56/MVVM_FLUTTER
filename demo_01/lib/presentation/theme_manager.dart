
import 'package:demo_01/presentation/color_manager.dart';
import 'package:demo_01/presentation/fonts_manager.dart';
import 'package:demo_01/presentation/style_manager.dart';
import 'package:demo_01/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){

  return ThemeData(
    // main colors of the app

    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    // ripple color

      splashColor: ColorManager.primaryOpacity70,

    //accentColor: ColorManager.darkGray, // depricated
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // card view theme

    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s12,
    ),

    // app bar theme

    appBarTheme: AppBarTheme(centerTitle: true,
    color: ColorManager.primary,
    elevation: AppSize.s4, shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularTextStyle(color: ColorManager.white,
      fontSize: FontSize.s16)
  ),
    // button theme

    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
  ),

    // Elevated Button

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularTextStyle(color: ColorManager.white),
        foregroundColor:ColorManager.primary,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(AppSize.s12) ),
      )
    ),

    // Text themeC
  
    textTheme: TextTheme(
        displayMedium: getSemiBoldTextStyle(color: ColorManager.darkGray,fontSize: FontSize.s16),
        titleSmall: getMedimTextStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
        labelLarge: getRegularTextStyle(color: ColorManager.grey1),
        bodyMedium: getRegularTextStyle(color: ColorManager.grey)
    ),
    // input decoration theme ( text form field )
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),

      // hint style
      hintStyle:
    )
    // input decoration theme ( text form field )
  );

}