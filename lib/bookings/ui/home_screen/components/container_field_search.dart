import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';

class ContainerFieldSearch extends StatelessWidget {
  const ContainerFieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        keyboardType: TextInputType.text,
        // textAlign: TextAlign.center,
        textInputAction: TextInputAction.search,
        // controller: _controller,
        onSubmitted: (value) {
          // widget.onTap(_controller.text);
          // if (_controller.text.isNotEmpty) {
          //   pushPage(context,
          //       SearchProductsScreen(textSearch: _controller.text));
          // }
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            // fillColor: Colors.red,
            // filled: true,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintStyle: const TextStyle(
                height: 2.2, fontSize: 10, fontFamily: AppFonts.moB,fontWeight: FontWeight.bold),
            hintText: "ابحث باسم العيادة او المركز",
            prefixIcon: SvgPicture.asset("assets/icons/search.svg"),
              prefixIconConstraints:const BoxConstraints(minWidth: 23, maxHeight: 20),
            ),
      ),
    ));
  }
}
