import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/circle_icon_button.dart';
import '../../../../core/widgets/texts.dart';
import '../../shopping_bookings_screen/components/icon_fav_widget.dart';

class AppBarBookingDetails extends StatelessWidget {
  const AppBarBookingDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Palette.mainColor,
      title: const Texts(
        title: "4365",
        family: AppFonts.moR,
        size: 20,
        textColor: Colors.white,
      ),
      actions: [
        const SizedBox(
          width: 20,
        ),
        const IconFavoriteWidget(),
        const SizedBox(
          width: 5,
        ),
        CircleIconButton(
          icon: "assets/icons/home_bar.svg",
          height: 36,
          padding: 9,
          width: 36,
          onTap: () {},
        ),
        CircleIconButton(
          icon: "assets/icons/back.svg",
          height: 36,
          width: 36,
          onTap: () {},
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
