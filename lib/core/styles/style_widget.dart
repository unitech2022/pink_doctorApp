import 'package:flutter/widgets.dart';
import 'package:pink_doctor/core/layout/palette.dart';

BoxDecoration decoration (double radius,{color,})=> 
  BoxDecoration(
    color:color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: const [
      BoxShadow(
        color:  Palette.activeMessage,
        offset: Offset(0, 0),
        blurRadius: 10,
      ),
    ],
  );

