import 'package:flutter/material.dart';

import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/circle_icon_button.dart';
import '../../shopping_bookings_screen/components/button_booking_widget.dart';

class BootmSheetWidget extends StatelessWidget {
  const BootmSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      color: Palette.mainColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Row(
        children: [
          ButtonBooking(
            onTap: () {},
            icon: "assets/icons/cartitem.svg",
            text: "احجز الان",
            color: const Color(0xff707070),
          ),
          const SizedBox(
            width: 16,
          ),
          ButtonBooking(
            onTap: () {},
            icon: "assets/icons/share.svg",
            text: "مشاركة",
            color: const Color(0xff707070),
          ),
          const SizedBox(
            width: 21,
          ),
          CircleIconButton(
            icon: "assets/icons/help.svg",
            color: const Color(0xff707070),
            padding: 9,
            height: 36,
            width: 36,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
