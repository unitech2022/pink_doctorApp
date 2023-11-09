import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pink_doctor/bookings/bloc/shopping_booking_cubit/shopping_booking_cubit.dart';
import 'package:pink_doctor/common/models/category_model.dart';
import '../../../core/layout/app_fonts.dart';
import '../../../core/widgets/texts.dart';
import 'components/Grid_list_booking_widget.dart';
import 'components/list_bookings_widget.dart';
import 'components/shopping_app_bar_widget.dart';

class ShoppingBookingsScreen extends StatelessWidget {
  final CategoryModel category;
  const ShoppingBookingsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingBookingCubit, ShoppingBookingState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              //** app bar  */
              const ShoppingAppBar(),
              const SizedBox(
                height: 23,
              ),
              // ** change view list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          category.image,
                          width: 25,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        Texts(
                          title: category.name,
                          family: AppFonts.moS,
                          size: 35,
                          textColor: const Color(0xffEC54A5),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              ShoppingBookingCubit.get(context)
                                  .changeCurrentIndexView(1);
                            },
                            child: SvgPicture.asset(
                              "assets/icons/grid.svg",
                              color: state.view == 0
                                  ? const Color(0xff9A9A9A)
                                  : const Color(0xffFCCFDA),
                            )),
                        const SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                            onTap: () {
                              ShoppingBookingCubit.get(context)
                                  .changeCurrentIndexView(0);
                            },
                            child: SvgPicture.asset(
                              "assets/icons/list.svg",
                              color: state.view == 1
                                  ? const Color(0xff9A9A9A)
                                  : const Color(0xffFCCFDA),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              // ** list
               Expanded(
                  child:state.view==0?const ListBookingsWidget(): const GridListBookingWidget()) //  ListBookingsWidget())
            ],
          ),
        );
      },
    );
  }
}

