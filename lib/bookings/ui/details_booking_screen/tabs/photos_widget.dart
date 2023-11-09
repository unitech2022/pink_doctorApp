import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pink_doctor/core/widgets/circle_icon_button.dart';

class PhotosWidget extends StatelessWidget {
  const PhotosWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return     GridView.builder(
              padding: EdgeInsets.only(top: 11),
               
               
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 280,
      childAspectRatio: 2.4 / 4,
      crossAxisSpacing: 5,
      mainAxisSpacing: 6),
                itemBuilder: (BuildContext context, int index) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color:Colors.red,
      margin: const EdgeInsets.all(5),
      child: Stack(children: [
        Image.asset("assets/images/imgd.png",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
        Align(
          alignment: Alignment.center,
          child: CircleIconButton(icon: "assets/icons/fill.svg", height: 36, width: 36, onTap: (){},color: Colors.white,),
        )
      ]),
    );});
  }
}

