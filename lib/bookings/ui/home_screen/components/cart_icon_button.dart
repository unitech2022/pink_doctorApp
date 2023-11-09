import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/widgets/texts.dart';

import '../../../../core/layout/app_fonts.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Palette.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset("assets/icons/cart.svg"),
            const Texts(
              title: "السلة",
              family: AppFonts.moB,
              widget: FontWeight.bold,
              size: 10,
              textColor: Color(0xffEC54A5),
            )
          ],
        ),
      ),
    );
  }
}
