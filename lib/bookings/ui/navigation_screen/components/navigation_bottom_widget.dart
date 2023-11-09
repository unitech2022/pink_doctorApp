import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pink_doctor/core/layout/app_fonts.dart';

import 'package:pink_doctor/core/widgets/texts.dart';

import '../../../bloc/home_cubit/home_cubit.dart';

class NavigationBottomWidget extends StatelessWidget {
  final HomeState state;
  const NavigationBottomWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 100,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 72,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ItemNavBottom(
                    icon: "assets/icons/account.svg",
                    title: "الحساب",
                    color: state.currentNavIndex == 1
                        ? const Color(0xffFFB6B3)
                        : const Color(0xff474747),
                    onPress: () {
                      
                      HomeCubit.get(context).changeCurrentIndexNav(1);
                    },
                  ),
                  ItemNavBottom(
                    icon: "assets/icons/calender.svg",
                    title: "مواعيدي",
                    color: state.currentNavIndex == 2
                        ? const Color(0xffFFB6B3)
                        : const Color(0xff474747),
                    onPress: () {
                      HomeCubit.get(context).changeCurrentIndexNav(2);
                    },
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                  ItemNavBottom(
                    icon: "assets/icons/fav.svg",
                    title: "المفضلة",
                    color: state.currentNavIndex == 3
                        ? const Color(0xffFFB6B3)
                        : const Color(0xff474747),
                    onPress: () {
                      HomeCubit.get(context).changeCurrentIndexNav(3);
                    },
                  ),
                  ItemNavBottom(
                    icon: "assets/icons/more.svg",
                    title: "المزيد",
                    color: state.currentNavIndex == 4
                        ? const Color(0xffFFB6B3)
                        : const Color(0xff474747),
                    onPress: () {
                      HomeCubit.get(context).changeCurrentIndexNav(4);
                    },
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: () {
                HomeCubit.get(context).changeCurrentIndexNav(0);
              },
              child: Container(
                width: 90,
                height: 90,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Container(
                  height: 58,
                  width: 58,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffFFB6B3),
                        offset: Offset(1, 1),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Center(
                      child: SvgPicture.asset("assets/icons/home_nav.svg")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemNavBottom extends StatelessWidget {
  final String title, icon;
  final Color color;
  final void Function() onPress;

  const ItemNavBottom({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: MaterialButton(
          onPressed:onPress,
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: color,
              ),
              const SizedBox(
                height: 8,
              ),
              Texts(
                title: title,
                family: AppFonts.moR,
                size: 10,
                textColor: color,
              )
            ],
          ),
        ));
  }
}
