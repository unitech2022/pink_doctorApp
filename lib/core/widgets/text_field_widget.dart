import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../layout/app_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final Widget icon;
  final TextEditingController controller;
  final TextInputType type;
  final String family;
  final int maxLength;
  final bool enable;
  final Widget suffixIcon;

  const TextFieldWidget(
      {super.key,
      required this.hint,
      required this.icon,
      required this.controller,
      required this.type,
      this.family = AppFonts.moB,
      this.enable = true,
      this.suffixIcon=const SizedBox(),
      this.maxLength = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xfffefefe),
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(width: 1.0, color: const Color(0xfff6f6f7)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0f000000),
            offset: Offset(1, 1),
            blurRadius: 6,
          ),
        ],
      ),
      child: TextField(
        
        enabled: enable,
        controller: controller,
        keyboardType: type,
        maxLength: maxLength == 0 ? null : maxLength,
        style: const TextStyle(
            fontFamily: AppFonts.moB, fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          icon: icon,
          hintText: hint,
          counterText: "",
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          border: InputBorder.none,
          hintStyle: TextStyle(
              fontFamily: family, fontSize: 14, color: Color(0xff1D1D1D)),
        ),
      ),
    );
  }
}
