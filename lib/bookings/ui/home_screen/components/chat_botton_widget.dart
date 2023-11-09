import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/palette.dart';

class ButtonChatWidget extends StatelessWidget {
  const ButtonChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Palette.textColor
        ),
        child: SvgPicture.asset("assets/icons/chat.svg"),
      ),
    );
  }
}
