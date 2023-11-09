import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/widgets/custom_button.dart';
import 'package:pink_doctor/core/widgets/texts.dart';
import 'package:pink_doctor/common/ui/auth_screens/components/appbar_auth.dart';

import '../../../../../core/layout/palette.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
 

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
           
           /// ** otp
           /// 
             Directionality(
                  textDirection: TextDirection.ltr,
                  child: SizedBox(
                    width: 230,
                    child: PinCodeTextField(
                      
                      appContext: context,
                                  
                      pastedTextStyle: const TextStyle(
                        color: Palette.textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                      length: 4,
                      
                      obscureText: false,
                      obscuringCharacter: '*',
                      textStyle: const TextStyle(
                        color: Palette.textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                      
                      blinkWhenObscuring: true,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 3,
                          spreadRadius: 3,
                          color: Color.fromARGB(25, 0, 0, 0),
                        ),
                      ],
                      animationType: AnimationType.fade,
                    
                      pinTheme: PinTheme(
                        
                        fieldOuterPadding: const EdgeInsets.only(left: 2),
                        shape: PinCodeFieldShape.circle,
                        borderRadius:null,
                        fieldHeight: 45,
                        fieldWidth:45,
                        
                        borderWidth: 3,
                        activeColor:Colors.transparent ,
                        inactiveColor:Colors.white ,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        activeFillColor: Colors.white,
                        selectedColor: Palette.textColor
                      ),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      
                      onCompleted: (v) {
                        // code = v;
                      },
                      onChanged: (value) {},
                      beforeTextPaste: (text) {
                        return true;
                      },
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