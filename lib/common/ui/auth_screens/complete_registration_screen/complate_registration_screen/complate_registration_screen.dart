import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/widgets/custom_button.dart';
import 'package:pink_doctor/core/widgets/text_field_widget.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import 'package:pink_doctor/common/ui/auth_screens/components/appbar_auth.dart';

class CompleteRegistrationScreen extends StatefulWidget {
  const CompleteRegistrationScreen({super.key});

  @override
  State<CompleteRegistrationScreen> createState() =>
      _CompleteRegistrationScreenState();
}

class _CompleteRegistrationScreenState
    extends State<CompleteRegistrationScreen> {
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
              //** NAME FIELD */
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Texts(
                            title: "الاسم الاول", family: AppFonts.moR, size: 10),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 4,
                      ),
                      TextFieldWidget(
                          hint: "",
                          icon: const SizedBox(),
                          controller: _controller,
                          type: TextInputType.text)
                    ],
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Texts(
                            title: "الاسم الاخير",
                            family: AppFonts.moR,
                            size: 10),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      TextFieldWidget(
                          hint: "",
                          icon: const SizedBox(),
                          controller: _controller,
                          type: TextInputType.text)
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //**  email  */
              const Padding(
               padding: EdgeInsets.symmetric(horizontal: 15),
                child: Texts(
                    title: "البريد الالكتروني", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              TextFieldWidget(
                  hint: "",
                  icon: const SizedBox(),
                  controller: _controller,
                  type: TextInputType.emailAddress),

              const SizedBox(
                height: 20,
              ),

              // ****  Gender

              const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
                child: Texts(title: "النوع", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              FieldRegistrationWidget(
                title: "ذكر",
                icon: "assets/icons/dropdown.svg",
                onPress: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              //** date */
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Texts(title: "تاريخ الميلاد", family: AppFonts.moR, size: 10),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 4,
              ),
              FieldRegistrationWidget(
                title: "23-04-2023",
                icon: "assets/icons/drop.svg",
                onPress: () {},
              ),
              const SizedBox(
                height: 159,
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

class FieldRegistrationWidget extends StatelessWidget {
  final String title, icon;
  final void Function() onPress;
  const FieldRegistrationWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 17),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Texts(title: title, family: AppFonts.moR, size: 15),
              SvgPicture.asset(icon)
            ],
          )),
    );
  }
}
