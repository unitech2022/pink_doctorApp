import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/texts.dart';
import '../../home_screen/components/chat_botton_widget.dart';
import '../../home_screen/components/container_field_search.dart';
import '../../home_screen/components/select_address_widget.dart';

class ShoppingAppBar extends StatelessWidget {
  const ShoppingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 26),
      decoration: const BoxDecoration(
          color: Palette.mainColor,
          borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(50))),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          // ** select Address
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SelectAddressWidget(),
                Container(
                  height: 23,
                  width: 89,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Texts(
                        title: "السلة",
                        family: AppFonts.moB,
                        widget: FontWeight.bold,
                        size: 10,
                        textColor: Color(0xffEC54A5),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset("assets/icons/cart.svg"),
                    ],
                  ),
                )
              ]),
          const SizedBox(
            height: 17,
          ),
          // ** search
          const Row(
            children: [
              ContainerFieldSearch(),
              SizedBox(
                width: 15,
              ),
              ButtonChatWidget()
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          // ** desc
          const Text("تظهر العروض لك تبعا لموقعك حسب الافضلية",
              style: TextStyle(
                fontFamily:AppFonts.alexR ,
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                // family: , size: 12,textColor: Colors.white,)
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
