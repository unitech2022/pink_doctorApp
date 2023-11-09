import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:pink_doctor/core/utils/app_model.dart';

import 'package:pink_doctor/bookings/ui/navigation_screen/components/navigation_bottom_widget.dart';

import '../../bloc/home_cubit/home_cubit.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          bottomSheet: NavigationBottomWidget(
            state: state,
          ),
          body:  Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: IndexedStack(
              index: state.currentNavIndex,
              children: screens,
              
            ),
          ),
        );
      },
    );
  }
}
