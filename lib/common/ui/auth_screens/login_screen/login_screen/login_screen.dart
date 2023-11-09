import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/widgets/custom_button.dart';
import 'package:pink_doctor/core/widgets/text_field_widget.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import 'package:pink_doctor/common/ui/auth_screens/components/appbar_auth.dart';

import '../../../../../core/layout/app_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarAuth(title: "استخدام التطبيق", context: context),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Texts(
                    title: "تسجيل الدخول للحساب",
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
                    "برجاء استخدام بيانات المعرفه مسبقا للدخول الي حسابك الموجود علي منصتنا",
                family: AppFonts.moB,
                size: 15,
                textColor: Color(0xffA5A5A5),
                line: 4,
              ),
              const SizedBox(
                height:30,
              ),
              TextFieldWidget(
                  hint: "البريد الالكتروني/الهاتف",
                  icon: SvgPicture.asset("assets/icons/nail.svg"),
                  controller: _controller,
                  type: TextInputType.emailAddress),

                    const SizedBox(
                height:15,
              ),
               TextFieldWidget(
                  hint:"كلمة المرور",
                  icon: SvgPicture.asset("assets/icons/pass.svg"),
                  controller: _controller,
                  suffixIcon: InkWell(
                    onTap: () {
                      
                    },
                    child: const Icon(Icons.remove_red_eye)),
                  type: TextInputType.emailAddress),

                    const SizedBox(
                height:15,
              ),

              CustomButton(title: "استمرار", onPressed: (){},)
            ],
          ),
        ),
      ),
    );
  }
}
