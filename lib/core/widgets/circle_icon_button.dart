import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleIconButton extends StatelessWidget {
  final String icon;
  final double height, width, padding;
  final void Function() onTap;
  final Color color;

  const CircleIconButton({
    super.key,
    required this.icon,
    required this.height,
    required this.width,
    required this.onTap,
    this.padding = 13,  this.color=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 36,
          width: 36,
          padding: EdgeInsets.all(padding),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration:
               BoxDecoration(shape: BoxShape.circle, color: color),
          child: SvgPicture.asset(icon)),
    );
  }
}
