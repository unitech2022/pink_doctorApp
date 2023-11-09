import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/bookings/ui/shopping_bookings_screen/shopping_bookings_screen.dart';
import 'package:pink_doctor/core/animations/slide_transtion.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/utils/app_model.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import '../components/app_bar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // ** app bar
        const AppBarHome(),
        const SizedBox(
          height: 9,
        )
        // ** body home
        ,
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //** banner 1 */
                ContainerBanner(
                  image: "assets/images/image2.jpg",
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10.5,
                ),

                //** banner 2 */
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ContainerBanner(
                        image: "assets/images/image.jpeg",
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: ContainerBanner(
                        image: "assets/images/image3.jpg",
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //** categories */
                Wrap(
                  spacing: 15,
                  
                  children: categoriesBookings
                      .map((e) => GestureDetector(
                        onTap: () {
                          if(e.id != 1){
                             pushTranslationPage(
                                    context: context,
                                    transtion:
                                        FadTransition(page:  ShoppingBookingsScreen(category:e)));
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                              height: 97,
                              width: 71,
                              child: Column(
                                children: [
                                  Container(
                                    height: 71,
                                    width: 71,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: SvgPicture.asset(e.image,width: 17,height: 17,fit: BoxFit.contain,),
                                    ),
                                  )
                                 , const SizedBox(height: 7,),
                                 Texts(title: e.name, family: AppFonts.moS, size: 12,widget: FontWeight.bold,)
                              
                                ],
                              ),
                            ),
                      ))
                      .toList(),
                )
              ],
            ),
          ),
        ))
      ],
    ));
  }
}

class ContainerBanner extends StatelessWidget {
  final void Function() onTap;
  final String image;
  const ContainerBanner({
    super.key,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 163,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Palette.textColor, borderRadius: BorderRadius.circular(15)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
