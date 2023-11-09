import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/bookings/ui/shopping_bookings_screen/components/icon_fav_widget.dart';
import 'package:pink_doctor/common/ui/auth_screens/components/appbar_auth.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';

import '../../../core/layout/palette.dart';
import '../../../core/widgets/texts.dart';

class MyAppointmentsScreen extends StatelessWidget {
  const MyAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarAuth(title: "مواعيدي", context: context),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              height: 72,
              width: double.infinity,
              color: const Color(0xffE4F4F3),
              child: TabBar(
                  padding: EdgeInsets.zero,
                  indicatorWeight: 4,
                  labelStyle:
                      const TextStyle(fontFamily: AppFonts.moR, fontSize: 15),
                  indicatorColor: Palette.textColor,
                  unselectedLabelColor: Colors.black,
                  labelColor: Palette.textColor,
                  onTap: (value) {
                    // print(value);
                    // ShoppingBookingCubit.get(context)
                    //     .changeCurrentIndexTabBar(value);
                  },
                  tabs: const [
                    Tab(
                      text: "المواعيد المؤكده",
                      height: 72,
                    ),
                    Tab(
                      text: "سجل المواعيد",
                      height: 72,
                    ),
                  ]),
            ),
            const Expanded(
                child: TabBarView(children: [
              ListBookingsCart(),
                ListBookingsCart(),
            ]))
          ],
        ),
      ),
    );
  }
}

class ListBookingsCart extends StatelessWidget {
  const ListBookingsCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding:
          const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      itemBuilder: (ctx, index) {
        return SizedBox(
          height: 160,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ** image booking
              Container(
                height: 100,
                width: 100,
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
                    Positioned(
                        top: 0,
                        bottom: 0,
                        right: 0,
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
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
                                    width: 7,
                                    height: 7,
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  const Texts(
                                    title: "4.5 (2500)",
                                    family: AppFonts.moR,
                                    size: 7,
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
                              height: 25,
                              width: 55,
                              decoration: const BoxDecoration(
                                  color: Palette.pinkColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomLeft:
                                          Radius.circular(25))),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Texts(
                                    title: "رقم العرض",
                                    family: AppFonts.moEL,
                                    size: 3,
                                    textColor: Colors.white,
                                  ),
                                  Texts(
                                    title: "32369",
                                    family: AppFonts.moEB,
                                    size: 11,
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
                width: 12,
              )
              // *** Details
              ,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // *** PRICE and Fav
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Palette.pinkColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "sar 1599",
                              style: TextStyle(
                                  fontFamily: AppFonts.moR,
                                  decoration:
                                      TextDecoration.lineThrough,
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                            const SizedBox(width: 7),
                            SvgPicture.asset(
                                "assets/icons/offer.svg"),
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
                      const IconFavoriteWidget(
                        color: Palette.textColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),

                  // ** desc peoduct
                  const Texts(
                    title: "عيادات كريستال الخبر",
                    family: AppFonts.moB,
                    size: 12,
                    widget: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Texts(
                    title:
                        " جلسات ليزر كامل للجسم مع 5 رتوش بجهاز ايليت بلس و جنتل بيزبرو + خدمة من اختيارك",
                    family: AppFonts.moR,
                    // textColor: Colors.grey,
                    size: 10,
                    line: 2,
                    height: 1.8,
                  )
                 , const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 1,
                    width: 180,
                    color: Palette.pinkColor,
                  ),
                   const SizedBox(
                    height: 10,
                  ),

                  const Row(
                    children: [
                      Texts(title: "تاريخ الموعد", family: AppFonts.moR, size: 10),
                      SizedBox(
                    width:52,
                  ),
                   Texts(title: "23-04-2023", family: AppFonts.moR, size: 10),
                    SizedBox(
                    width:23,
                  ),
  Texts(title: "15:55", family: AppFonts.moR, size: 10),
                    ],
                  )
                
                ],
              ))
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Container(
        height: 1,
        color: const Color(0xffD2D2D2),
      ),
      itemCount: 10,
    );
  }
}
