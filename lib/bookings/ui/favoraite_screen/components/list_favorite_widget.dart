import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/circle_icon_button.dart';
import '../../../../core/widgets/texts.dart';
import '../../shopping_bookings_screen/components/icon_fav_widget.dart';

class ListFavoriteWidget extends StatelessWidget {
  const ListFavoriteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: const EdgeInsets.all(25),
            itemBuilder: (ctx, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 310,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    //*** image booking  */
                    Container(
                      height: 165,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffFCCFDA),
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/logoImage.png"))),
                      child: Stack(children: [
                        // ** image Product
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/imagb.png",
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                        // ** icon  fav
                        const Positioned(
                            top: 10, left: 10, child: IconFavoriteWidget()),

                        // **  container order number
                        // ** details
                        Positioned(
                            top: 20,
                            right: 34,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleIconButton(
                                  icon: "assets/icons/logo.svg",
                                  height: 37,
                                  padding: 4,
                                  width: 37,
                                  onTap: () {},
                                  color: Palette.textColor,
                                ),
                                const Texts(
                                    title: "رقم العرض",
                                    family: AppFonts.moR,
                                    size: 17),
                                const Texts(
                                  title: "65747",
                                  family: AppFonts.moM,
                                  size: 35,
                                  widget: FontWeight.normal,
                                ),
                              ],
                            ))
                      ]),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Texts(
                            title: "عيادات كريستال الخبر",
                            family: AppFonts.moS,
                            size: 18,
                            line: 1,
                            textColor: Color(0XFF86003C)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Texts(
                            title: "عيادات كريستال الخبر",
                            family: AppFonts.moR,
                            size: 10,
                            textColor: Colors.grey),
                        const SizedBox(
                          width: 45,
                        )
                        //** rate */
                        ,
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/star.svg",
                                color: Colors.black,
                                width: 13,
                                height: 13,
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              const Texts(
                                title: "4.5 (2500)",
                                family: AppFonts.moR,
                                size: 10,
                                widget: FontWeight.normal,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Texts(
                      title:
                          " جلسات ليزر كامل للجسم مع 5 رتوش بجهاز ايليت بلس و جنتل بيزبرو + خدمة من اختيارك نهتم بعملاءنا الكرام لابعد الحدو",
                      family: AppFonts.moR,
                      size: 10,
                      line: 2,
                      height: 1.4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // *** buttons
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(35),
                                    bottomRight: Radius.circular(35),
                                  ),
                                  color: Palette.textColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/cartitem.svg",
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Texts(
                                      title: "احجز الان",
                                      family: AppFonts.moR,
                                      textColor: Colors.white,
                                      size: 10)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                            Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomLeft: Radius.circular(35),
                                  ),
                                  color: Color(0xff9A9A9A)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/share.svg",
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Texts(
                                      title:"مشاركة",
                                      family: AppFonts.moR,
                                      textColor: Colors.white,
                                      size: 10)
                                ],
                              ),
                            ),
                          ),
                        ),
                     
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
