import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/bookings/ui/shopping_bookings_screen/components/button_booking_widget.dart';

import '../../../../core/animations/slide_transtion.dart';
import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/texts.dart';
import '../../details_booking_screen/details_booking_screen.dart';
import 'icon_fav_widget.dart';

class ListBookingsWidget extends StatelessWidget {
  const ListBookingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 26),
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              pushTranslationPage(
                  context: context,
                  transtion: FadTransition(page: const DetailsBookingScreen()));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 29),
              height: 365,
              width: double.infinity,
              child: Stack(children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffFCCFDA),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/logoImage.png"))),
                  child: Stack(children: [
                    // ** image Product
                    Positioned(
                        top: 30,
                        left: 0,
                        bottom: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/imagb.png",
                            fit: BoxFit.cover,
                            width: 270,
                          ),
                        )),
                    // ** icon  fav
                    const Positioned(
                        top: 10, left: 10, child: IconFavoriteWidget()),

                    // **  container order number
                    // ** details
                    const ContainerNameAndDescBooking()

                    // ** Rate and price
                    ,
                    const ContainerPriceAndRate()
                  ]),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 35,
                      margin: const EdgeInsets.symmetric(horizontal: 29),
                      child: Row(
                        children: [
                          ButtonBooking(
                            onTap: () {},
                            icon: "assets/icons/cartitem.svg",
                            text: "احجز الان",
                            color: Palette.textColor,
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          ButtonBooking(
                            onTap: () {},
                            icon: "assets/icons/share.svg",
                            text: "مشاركة",
                            color: Palette.mainColor,
                          ),
                        ],
                      ),
                    ))
              ]),
            ),
          );
        });
  }
}

class ContainerNameAndDescBooking extends StatelessWidget {
  const ContainerNameAndDescBooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 17,
        right: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 173,
              decoration: const BoxDecoration(
                  color: Palette.textColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              child: const Column(
                children: [
                  Texts(
                    title: "رقم العرض",
                    family: AppFonts.moEL,
                    size: 17,
                    textColor: Colors.white,
                  ),
                  Texts(
                    title: "32369",
                    family: AppFonts.moM,
                    size: 41,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(top: 30, left: 18, right: 18),
              child: Column(
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
                        fontSize: 20,
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
                  )
                  // ** desc product
                  ,SizedBox(height: 5,),
                  const SizedBox(
                    width: 220,
                    child: Text(
                      "مع 5 رتوش بجهاز ايليت بلس و جنتل بيزبرو + خدمة من ",
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color.fromARGB(255, 33, 33, 33),
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
                        fontWeight: FontWeight.w700,
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
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ContainerPriceAndRate extends StatelessWidget {
  const ContainerPriceAndRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 43,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ** rate
              Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/icons/star.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Texts(
                    title: "4.5 (2500)",
                    family: AppFonts.moR,
                    size: 15,
                    widget: FontWeight.bold,
                  )
                ],
              ),
              // SizedBox(width: 100,)
              // ** price
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
              )
            ],
          ),
        ));
  }
}
