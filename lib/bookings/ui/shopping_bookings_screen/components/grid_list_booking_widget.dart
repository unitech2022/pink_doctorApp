import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../../core/animations/slide_transtion.dart';
import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/texts.dart';
import '../../details_booking_screen/details_booking_screen.dart';
import 'button_booking_widget.dart';
import 'icon_fav_widget.dart';

class GridListBookingWidget extends StatelessWidget {
  const GridListBookingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 280,
      childAspectRatio: 1.35 / 4,
      crossAxisSpacing: 5,
      mainAxisSpacing: 6),
                itemBuilder: (BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
           pushTranslationPage(
                                    context: context,
                                    transtion:
                                        FadTransition(page:  const DetailsBookingScreen()));
      },
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //** Image booking */
            Container(
              height: 178,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Palette.mainColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/imagb.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  const Positioned(
                      top: 10,
                      right: 10,
                      child: IconFavoriteWidget()),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //** rate */
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 5),
                            child: Row(
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/star.svg",
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Texts(
                                  title: "4.5 (2500)",
                                  family: AppFonts.moR,
                                  size: 15,
                                  widget: FontWeight.normal,
                                )
                              ],
                            ),
                          )
                          // ** offer number
                          ,
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 46,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Palette.textColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    bottomLeft:
                                        Radius.circular(25))),
                            child: const Column(
                              children: [
                                Texts(
                                  title: "رقم العرض",
                                  family: AppFonts.moL,
                                  size: 9,
                                  textColor: Colors.white,
                                ),
                                Texts(
                                  title: "32369",
                                  family: AppFonts.moM,
                                  size: 23,
                                  widget: FontWeight.normal,
                                  textColor: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            
            const SizedBox(
              height: 12,
            ),
            // ** price
            Row(
              children: [
                Container(
                  height: 23,
                  width: 115,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Palette.textColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "sar 1599",
                        style: TextStyle(
                            fontFamily: AppFonts.moR,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 7),
                      SvgPicture.asset("assets/icons/offer.svg"),
                      const SizedBox(width: 7),
                      const Texts(
                        title: "sar 1599",
                        family: AppFonts.moB,
                        size: 10,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
    
            // ** name booking
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //** name product */
                const SizedBox(
                  width: 200,
                  child: Text(
                    "5 جلسات  كامل للجسم",
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: AppFonts.moB,
                      fontSize: 18,
                      height: 1.0,
                      fontWeight: FontWeight.normal,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5,)
                // ** desc product
                ,
                const SizedBox(
                  width: 220,
                  child: Text(
                    "مع 5 رتوش بجهاز ايليت بلس و جنتل بيزبرو + خدمة من ",
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: TextStyle(
                      color: Color.fromARGB(255, 59, 58, 58),
                      fontFamily: AppFonts.moL,
                      fontSize: 16,
                      height: 1.0,
                      fontWeight: FontWeight.normal,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  width: 230,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 220,
                  child: Text(
                    "عيادات كريستال الخبر",
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: AppFonts.moR,
                      fontSize: 12,
                      height: 1.0,
                      fontWeight: FontWeight.normal,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 220,
                  child: Text(
                    "الحزام الأخضر, الخزامي",
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: AppFonts.moR,
                      fontSize: 12,
                      height: 1.0,
                      fontWeight: FontWeight.normal,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                Column(
          children: [
            Row(
              children: [
                ButtonBooking(
                  onTap: () {},
                  icon: "assets/icons/cartitem.svg",
                  text: "احجز الان",
                  color: Palette.textColor,
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                ButtonBooking(
                  onTap: () {},
                  icon: "assets/icons/share.svg",
                  text: "مشاركة",
                  color: Palette.mainColor,
                ),
              ],
            ),
          ],
        ),
                   
              ],
            ),
          ],
        ),
      ),
    );
                },
              );
  }
}
