import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconFavoriteWidget extends StatelessWidget {
  final Color color;
  const IconFavoriteWidget({
    super.key,  this.color=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      padding: const EdgeInsets.all(9),
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: SvgPicture.asset("assets/icons/fav.svg",),
    );
  }
}
