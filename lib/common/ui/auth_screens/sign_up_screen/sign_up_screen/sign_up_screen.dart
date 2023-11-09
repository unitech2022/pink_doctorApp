import 'package:flutter/material.dart';
import 'package:pink_doctor/core/helpers/helper_functions.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/widgets/custom_button.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import 'package:pink_doctor/common/ui/auth_screens/components/appbar_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Texts(
                    title: "تسجيل حساب جديد",
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
                    "مرحبا بك في منصتنا ! من اجل انشاء حساب جديد لك كموفر لخدمة النقل اتبع الخطوات التالية",
                family: AppFonts.moB,
                size: 15,
                textColor: Color(0xffA5A5A5),
                line: 4,
              ),
              const SizedBox(
                height: 30,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(70, 158, 158, 158), //New
                          blurRadius: 20.0,
                          offset: Offset(1, 1))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sizedWidth(8),
                      Image.asset("assets/images/flag.png",width: 34,height: 25,),
                      sizedWidth(8),
                      const Texts(
                        title: "+966",
                        textColor: Color(0xff464646),
                        widget: FontWeight.bold,
                        algin: TextAlign.center,
                        family: AppFonts.moB,
                        size: 14,
                      ),
                      sizedWidth(8),
                 
                      Expanded(
                        child: SizedBox(
                            height: 45,
                            child: Center(
                              child: TextField(
                                controller: _controller,
                                keyboardType: TextInputType.number,
                                cursorColor: Colors.grey,
                                maxLength: 9,
                                decoration: const InputDecoration(
                                    counterText: "",
                                    hintStyle: TextStyle(fontSize: 14),
                                    isDense: true,
                                    hintText: "ادخل رقم جوالك هنا",
                                    border: InputBorder.none),
                              ),
                            )),
                      ),
                      sizedWidth(8),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                title: "استمرار",
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const Texts(
                title:
                    "بانشائك حساب جديد لدي منصتنا فان ذلك يعني انك قد وافقت علي الشروط و السياسات المتبعة لدي المنصة والتي تحترم القوانين المعمول بها في دول تقديم الخدمة",
                family: AppFonts.moB,
                size: 15,
                algin: TextAlign.center,
                textColor: Color(0xffA5A5A5),
                line: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
