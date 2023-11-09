import 'package:flutter/material.dart';

import '../layout/app_fonts.dart';
import '../layout/app_sizes.dart';
import '../layout/palette.dart';

ThemeData lightTheme(BuildContext context) {
  // final currentLang = prefs.getString(AppConstants.langugageCode);
  return ThemeData(
    // useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xffF9F7F7),
    // primaryColor: Palette.restaurantColor,
    splashFactory: InkRipple.splashFactory,
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
    fontFamily: AppFonts.moM,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      
      unselectedLabelStyle: TextStyle(fontFamily: AppFonts.moL, fontSize: 11), 
      labelStyle:
          TextStyle(fontFamily: AppFonts.moR, fontSize: 12), 
          
          // color for text
    ),
    // deprecated,

    // currentLang == AppConstants.ar ? AppFonts.stc : AppFonts.montserrat,
    colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Palette.mainColor,
        ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(
        Palette.mainColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Palette.white,
      elevation: AppSize.s5,
      shadowColor: Color(0x9AF1F1F1),
      iconTheme: IconThemeData(
        color: Palette.kDarkGrey,
      ),
      titleTextStyle: TextStyle(
        color: Palette.kDarkGrey,
        fontFamily: AppFonts.moM,
        fontSize: AppSize.s20,
      ),
    ),
    // colorScheme: ColorScheme.fromSeed(
    //   seedColor: Palette.restaurantColor,
    // ),
  );
}
