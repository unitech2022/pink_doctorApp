import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/utils/app_model.dart';
import '../../../../core/widgets/texts.dart';

class DescriptionBooking extends StatelessWidget {
  const DescriptionBooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 34),
        const Row(
          children: [
            Texts(
              title: "تفاصيل الاعلان",
              family: AppFonts.moB,
              size: 12,
              textColor: Palette.textColor,
              widget: FontWeight.bold,
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        // ** desc
        Row(
          children: [
            Expanded(
                child: Texts(
              title: descText,
              family: AppFonts.moR,
              size: 12,
              line: 243,
            )),
          ],
        ),
        const SizedBox(
          height: 40,
        ),

        // ** location
        const Row(
          children: [
            Texts(
              title: "الموقع",
              family: AppFonts.moB,
              size: 12,
              textColor: Palette.textColor,
              widget: FontWeight.bold,
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),

        const Row(
          children: [
            Expanded(
                child: Texts(
              title:
                  "يقع المركز في حي الدمام شارع احد امام مسجد الأمير طلال في برج الهانوف الدور العاشر ",
              family: AppFonts.moR,
              size: 12,
              line: 243,
            )),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              border: Border.all(width: 1, color: Colors.black)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/getlocation.svg"),
              const SizedBox(
                width: 5,
              ),
              const Texts(
                  title: "اضغط هنا للانتقال الي تطبيق الخرائط",
                  family: AppFonts.moR,
                  size: 12)
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        // *** ********
        //*** price */
        const Row(
          children: [
            Texts(
              title: "التكلفة",
              family: AppFonts.moB,
              size: 12,
              textColor: Palette.textColor,
              widget: FontWeight.bold,
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Texts(
                  title: " 119 " + "ر.س",
                  family: AppFonts.moR,
                  size: 28,
                  height: 1.2,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  " 400",
                  style: TextStyle(
                      fontFamily: AppFonts.moR,
                      decoration: TextDecoration.lineThrough,
                      fontSize: 17,
                      color: Color(0xff9A9A9A)),
                ),
              ],
            ),
            Texts(
              title: "خصم بمقدار " + " 70 %  ",
              family: AppFonts.moR,
              size: 12,
              height: 1.2,
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),

        const Row(
          children: [
            Expanded(
              child: Texts(
                title:
                    "لكي يتم تاكيد حجزك لهذا العرض لابد من سداد 20٪ من قيمة الحجز وقدره 19 ريال فقط واصدار الفاتوره ودفع المبلغ المتبقي لدى مقر العياده",
                family: AppFonts.moR,
                size: 12,
                height: 1.2,
                line: 34,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 78,
        ),
        // *** ********
      ],
    );
  }
}
