import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/widgets/custom_button.dart';
import 'package:pink_doctor/core/widgets/text_field_widget.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import 'package:pink_doctor/common/ui/auth_screens/complete_registration_screen/complate_registration_screen/complate_registration_screen.dart';
import 'package:pink_doctor/common/ui/auth_screens/components/appbar_auth.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarAuth(title: "استخدام التطبيق", context: context),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Texts(
                    title: "بعض البيانات الاساسية",
                    family: AppFonts.moB,
                    size: 30,
                    widget: FontWeight.bold,
                    textColor: Palette.textColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Texts(
                title:
                    "نحتاج الي القليل من المعلومات الشخصية تلك المعلومات سوف تساهم في تحسين استخدام التطبيق",
                family: AppFonts.moB,
                size: 15,
                textColor: Color(0xffA5A5A5),
                line: 4,
              ),
              const SizedBox(
                height: 30,
              ),
              //** add photo */
              Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          height: 75,
                          width: 75,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xfffefefe),
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.0, color: const Color(0xfff6f6f7)),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x0f000000),
                                offset: Offset(1, 1),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: SvgPicture.asset("assets/icons/camera.svg"))),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts(
                          title: "لم يتم رفع صورة شخصية للحساب",
                          family: AppFonts.moB,
                          size: 10),
                      Texts(
                          title: "صورة شخصية - jpg, jpeg, png - 2 MB max",
                          family: AppFonts.moB,
                          size: 10),
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //**  passWord  */
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:
                    Texts(title: "كلمة المرور", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              TextFieldWidget(
                  hint: "",
                  icon: const SizedBox(),
                  controller: _controller,
                  type: TextInputType.visiblePassword),

              const SizedBox(
                height: 20,
              ),

              //**confirm  passWord  */
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Texts(
                    title: "إعادة كلمة المرور", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              TextFieldWidget(
                  hint: "",
                  icon: const SizedBox(),
                  controller: _controller,
                  type: TextInputType.visiblePassword),

              const SizedBox(
                height: 20,
              ),

              //** الاهتمامات */
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:
                    Texts(title: "الاهتمامات", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              FieldRegistrationWidget(
                title: "تلقائي",
                icon: "assets/icons/drop.svg",
                onPress: () {},
              ),

              const SizedBox(
                height: 20,
              ),
              //** الموقع التلقائي */
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:
                    Texts(title: "الموقع التلقائي", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              FieldRegistrationWidget(
                title:"تلقائي",
                icon: "assets/icons/drop.svg",
                onPress: () {},
              ),
              const SizedBox(
                height: 80,
              ),
              CustomButton(
                title: "استمرار",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
