import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/widgets/texts.dart';

class ContainerPriceWidget extends StatelessWidget {
  const ContainerPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffEC54A5),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset("assets/icons/offer.svg"),
            const Texts(
              title: "sr",
              family: AppFonts.moB,
              size: 10,
              textColor: Colors.white,
              widget: FontWeight.bold,
            )
          ],
        ),
        const Texts(
            title: "1555",
            family: AppFonts.moB,
            size: 18,
            textColor: Colors.white,
            widget: FontWeight.bold),
        const Text(
          "sar 1599",
          style: TextStyle(
              fontFamily: AppFonts.moL,
              decoration: TextDecoration.lineThrough,
              fontSize: 10,
              color: Colors.white),
        ),
      ]),
    );
  }
}
