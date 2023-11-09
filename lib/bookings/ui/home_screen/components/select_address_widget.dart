import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';

import '../../../../core/widgets/texts.dart';

class SelectAddressWidget extends StatelessWidget {
  final double width;
  const SelectAddressWidget({
    super.key,  this.width=80,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/location.svg"),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Texts(
              title: "تحديد موقعك",
              family: AppFonts.moR,
              size: 15,
              line: 2,
              textColor: Colors.white,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/dropdown.svg",
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
