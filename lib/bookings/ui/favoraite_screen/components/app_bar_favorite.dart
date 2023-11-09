import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/texts.dart';
import '../../home_screen/components/select_address_widget.dart';

class AppBarFavorite extends StatelessWidget {
  const AppBarFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          color: Palette.mainColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //** select address */
              const SelectAddressWidget(
                width: 100,
              ),

              //** Cart button */
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
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              Texts(
                title: "المفضلة",
                family: AppFonts.moS,
                size: 35,
                textColor: Color(0XFF86003C),
              ),
            ],
          ),
          const Row(
            children: [
              Texts(
                title: "بامكانك حذف العناصر من المفضلة باستخدام خيار القلب",
                family: AppFonts.moR,
                size: 10,
                textColor: Color(0XFF86003C),
              ),
            ],
          )
        ],
      ),
    );
  }
}
