import 'package:flutter/material.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/widgets/texts.dart';

class DatesWork extends StatelessWidget {
  const DatesWork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 34,
        ),
        Row(
          children: [
            Texts(
              title: "أوقات عمل المركز",
              family: AppFonts.moB,
              size: 12,
              textColor: Palette.textColor,
              widget: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        // ** days work
        Row(
          children: [
            Texts(
              title: "الاحد - الخميس :  9:30ص وحتي 01:30 م",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
          ],
        ),

        Row(
          children: [
            Texts(
              title: "الاحد - الخميس :  9:30ص وحتي 01:30 م",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
          ],
        ),

        SizedBox(
          height: 28,
        ),
        //******* */

        Row(
          children: [
            Texts(
              title: "احصائيات",
              family: AppFonts.moB,
              size: 12,
              textColor: Palette.textColor,
              widget: FontWeight.bold,
            ),
          ],
        ),

        SizedBox(
          height: 12,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Texts(
              title: "تاريخا الاعلان",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
            Texts(
              title: "23-04-2023",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
            SizedBox(),
            SizedBox()
          ],
        ),

     

//** */

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Texts(
              title: "عدد المشاهدات",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
            Texts(
              title: "23-04-2023",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
            SizedBox(),
            SizedBox()
          ],
        ),

   
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Texts(
              title: "عدد الحجوزات",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
            Texts(
              title: "23-04-2023",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            ),
            SizedBox(),
            SizedBox()
          ],
        ),
      ],
    );
  }
}
