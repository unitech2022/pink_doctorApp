import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/widgets/texts.dart';

class ButtonBooking extends StatelessWidget {
  final void Function() onTap;
  final Color color;
  final String text, icon;
  const ButtonBooking({
    super.key,
    required this.onTap,
    required this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35), color: color),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                width: 10,
              ),
              Texts(
                  title: text,
                  family: AppFonts.moR,
                  textColor: Colors.white,
                  size: 15)
            ],
          ),
        ),
      ),
    );
  }
}
