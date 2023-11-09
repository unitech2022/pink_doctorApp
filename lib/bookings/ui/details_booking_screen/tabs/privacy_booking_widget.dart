import 'package:flutter/material.dart';

import '../../../../core/layout/app_fonts.dart';
import '../../../../core/layout/palette.dart';
import '../../../../core/utils/app_model.dart';
import '../../../../core/widgets/texts.dart';

class PrivacyBookingWidget extends StatelessWidget {
  const PrivacyBookingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
      const SizedBox(height: 34,),
    const Row(
            children: [
              Texts(
                title:"سياسة الاسترجاع والاستبدال",
                family: AppFonts.moB,
                size: 12,
                textColor: Palette.textColor,
                widget: FontWeight.bold,
              ),
            ],
          ),

              const SizedBox(height: 12 ,),

                Row(
            children: [
              Expanded(
                  child: Texts(
                title: privacy,
                family: AppFonts.moR,
                size: 12,
                line: 243,
              )),
            ],
          ),

     ],
    
    );
  }
}

