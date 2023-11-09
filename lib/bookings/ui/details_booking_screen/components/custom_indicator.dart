import 'package:flutter/material.dart';

import '../../../../core/layout/palette.dart';

class CustomIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([void Function()? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = Palette.textColor
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), _paint);
  }
}