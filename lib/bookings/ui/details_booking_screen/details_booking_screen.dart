import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pink_doctor/bookings/bloc/shopping_booking_cubit/shopping_booking_cubit.dart';
import 'package:pink_doctor/bookings/ui/details_booking_screen/components/app_bar_booking_details.dart';
import 'package:pink_doctor/bookings/ui/details_booking_screen/components/container_price_widget.dart';
import 'package:pink_doctor/bookings/ui/details_booking_screen/components/custom_indicator.dart';
import 'package:pink_doctor/bookings/ui/details_booking_screen/tabs/dates_work.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/widgets/circle_icon_button.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import 'tabs/description_booking.dart';
import 'tabs/privacy_booking_widget.dart';
import 'components/botom_sheet_widget.dart';

class DetailsBookingScreen extends StatefulWidget {
  const DetailsBookingScreen({super.key});

  @override
  State<DetailsBookingScreen> createState() => _DetailsBookingScreenState();
}

class _DetailsBookingScreenState extends State<DetailsBookingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingBookingCubit, ShoppingBookingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: AppBarBookingDetails()),
          bottomSheet: const BootmSheetWidget(),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: CustomScrollView(
              slivers: [
                
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Palette.mainColor,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(16),
                    child: Container(
                      height: 72,
                      width: double.infinity,
                      color: Palette.tabBarColor,
                      child: TabBar(
                          padding: EdgeInsets.zero,
                          controller: _tabController,
                          indicatorWeight: 4,
                          indicator: CustomIndicator(),
                          indicatorColor: Palette.textColor,
                          unselectedLabelColor: Colors.black,
                          onTap: (value) {
                            print(value);
                            ShoppingBookingCubit.get(context)
                                .changeCurrentIndexTabBar(value);
                          },
                          tabs: const [
                            Tab(
                              text: "التفاصيل",
                              height: 72,
                            ),
                            Tab(
                              text: "أوقات العمل",
                              height: 72,
                            ),
                            Tab(
                              text: "الصور",
                              height: 72,
                            ),
                            Tab(
                              text: "الاسترجاع",
                              height: 72,
                            ),
                          ]),
                    ),
                  ),
                  expandedHeight: 420,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xffFCCFDA),
                        image: DecorationImage(
                            image: AssetImage("assets/images/logoImage.png"))),
                    child: Stack(children: [
                      // ** image Product
                      Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          child: Image.asset(
                            "assets/images/imagb.png",
                            fit: BoxFit.cover,
                            // width: 270,
                          )),

                      // ** details
                      // ** details
                      Positioned(
                          top: 100,
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
                                size: 41,
                                widget: FontWeight.normal,
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              //** price */
                              const ContainerPriceWidget(),
                              const SizedBox(
                                height: 11,
                              ),
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
                            ],
                          ))
                    ]),
                  ),
                ),
                SliverToBoxAdapter(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child:state.indexTabBar==2?const SizedBox(): IndexedStack(
                
                        index: state.indexTabBar,
                        children: detailsBookingWidgetList),
                  ),
                ),
                
                  SliverPadding(
                    sliver: SliverGrid.builder(
                      
                      itemCount: state.indexTabBar == 2?5:0,
                      
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                
                                  maxCrossAxisExtent: 280,
                                  childAspectRatio: 3.2/ 4,
                                  crossAxisSpacing: 0,
                                 
                                  mainAxisSpacing: 0),
                          itemBuilder: (ctx, index) {
                            return Container(
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.red,
                              margin: const EdgeInsets.all(2),
                              child: Stack(children: [
                                Image.asset(
                                  "assets/images/imgd.png",
                                  height: double.infinity,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: CircleIconButton(
                                    icon: "assets/icons/fill.svg",
                                    height: 36,
                                    width: 36,
                                    onTap: () {},
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                            );
                          }), padding: const EdgeInsets.symmetric(horizontal: 20),
                  )
                   
              ],
            ),
          ),
        );
      },
    );
  }
}

List<Widget> detailsBookingWidgetList = [
  const DescriptionBooking(),
  const DatesWork(),
  const SizedBox(),
  const PrivacyBookingWidget()
];
