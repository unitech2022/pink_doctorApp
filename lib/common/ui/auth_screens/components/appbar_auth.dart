import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/widgets/texts.dart';

PreferredSize appBarAuth({title,context})=>PreferredSize(
        preferredSize: const Size.fromHeight(66.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(169, 232, 179, 203),
          automaticallyImplyLeading: false,
          title:  Texts(
            title: title,
            family: AppFonts.moR,
            size: 20,
            textColor: Colors.white,
          ),
          actions: [
              const SizedBox(width: 20,),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                height: 36,
                width: 36,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: SvgPicture.asset("assets/icons/home_bar.svg")),
            )
          
              ,GestureDetector(
              onTap: () {
                
              },
              child: Container(
                height: 36,
                width: 36,
                 padding: const EdgeInsets.all(13),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: SvgPicture.asset("assets/icons/back.svg")),
            ),
      
            const SizedBox(width: 20,),
        
          ],
        ),
      );
   