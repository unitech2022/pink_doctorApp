import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pink_doctor/core/layout/palette.dart';
import 'package:pink_doctor/core/router/routes.dart';
import 'package:pink_doctor/core/widgets/custom_button.dart';
import 'package:location/location.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pink_doctor/core/layout/app_fonts.dart';
import 'package:pink_doctor/core/widgets/texts.dart';

import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/app_model.dart';

pushPage(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
void firebaseCloudMessagingListeners() {
  if (Platform.isIOS) {
    _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  _firebaseMessaging.getToken().then((token) {
    AppModel.deviceToken = token!;
    if (kDebugMode) {
      print("${AppModel.deviceToken} =====> DIVICEToken");
    }
  });
}

late String currentCity = "";
LocationData locData = LocationData.fromMap({});
Future getLocation() async {
  Location location = Location();
  bool serviceEnabled;
  PermissionStatus permissionGranted;
  serviceEnabled = await location.serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
      return;
    }
  }

  permissionGranted = await location.hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return;
    }
  }

  locData = await location.getLocation();
}

showSheet(BuildContext context, child) {
  showModalBottomSheet(
    context: context,
    clipBehavior: Clip.antiAlias,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext bc) {
      return child;
    },
  );
}

callUs(context) => Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              width: 24,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.5),
                color: const Color(0xFFDCDCDF),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        launch('tel:+01025560676');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF6F2F2),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.call,
                              size: 30,
                              color: Palette.mainColor,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Texts(
                                title: "اتصال",
                                family: AppFonts.moB,
                                size: 15,
                                textColor: Colors.black)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        var whatsappURl_android =
                            "whatsapp://send?phone=01025560676&text=مرحبا بك";
                        var whatappURL_ios =
                            "https://wa.me/0 112 128 8341?text=${Uri.parse("مرحبا بك")}";
                        if (Platform.isIOS) {
                          // for iOS phone only
                          if (await canLaunch(whatappURL_ios)) {
                            await launch(whatappURL_ios, forceSafariVC: false);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: new Text("whatsapp no installed")));
                          }
                        } else {
                          // android , web
                          if (await canLaunch(whatsappURl_android)) {
                            await launch(whatsappURl_android);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: new Text("whatsapp no installed")));
                          }
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF6F2F2),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 30,
                              color: Palette.mainColor,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Texts(
                                title: "واتساب",
                                family: AppFonts.moB,
                                size: 15,
                                textColor: Colors.black)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

// bool isLogin() {
//   return currentUser.token != "";
// }

// pushPageTransition({context, page, type}) {
//   Navigator.push(
//       context,
//       PageTransition(
//           duration: const Duration(milliseconds: 300),
//           reverseDuration:
//               // ignore: prefer_const_constructors
//               Duration(milliseconds: 300),
//           // alignment: Alignment.center,
//           curve: Curves.ease,
//           type: type,
//           child: page));
// }
replacePage({context, page}) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}

pop(context) {
  Navigator.pop(context);
}

signOut({ctx}) async {
  const storage = FlutterSecureStorage();

  token = "";
  await storage.delete(key: "token");
  await storage.delete(key: "role");
  // currentUser.token = '';
  // token = '';
  // currentUser.role = null;
  // currentUser.id = null;

  // replacePage(context: ctx, page: const SelectTypeAccountScreen());
}

pushPageRoutName(context, route) {
  Navigator.pushNamed(
    context,
    route,
  );
}

pushPageRoutNameReplaced(context, route) {
  Navigator.pushReplacementNamed(
    context,
    route,
  );
}

widthScreen(context) => MediaQuery.of(context).size.width;

heightScreen(context) => MediaQuery.of(context).size.height;

SizedBox sizedHeight(double height) => SizedBox(
      height: height,
    );
SizedBox sizedWidth(double width) => SizedBox(
      width: width,
    );

bool isLogin() {
  return token != '';
}

showTopMessage({context, customBar}) {
  showTopSnackBar(
    Overlay.of(context),
    customBar,
  );
}

//  saveToken(UserDetailsPref user) {
//   const storage = FlutterSecureStorage();
//   storage.write(key: 'token', value: user.token);
//   storage.write(key: 'id', value: user.id);
//   storage.write(key: 'userName', value: user.userName);

//   storage.write(key: 'deviceToken', value: user.deviceToken);
//   storage.write(key: 'role', value: user.role);
//   // storage.write(key: 'lat', value: userResponse.user!.lat.toString());
//   //   storage.write(key: 'lng', value: userResponse.user!.lng.toString());
//   // storage.write(key: 'name', value: userResponse.user!.fullName);
//   // storage.write(key: 'email', value: currentUser!.user!.email);
//   // storage.write(key: 'image', value:currentUser!.user!.profileImage

//   // );
// }

// readToken() async {
//   // await getBaseUrl();
//   const storage = FlutterSecureStorage();
//   try {
//     currentUser.token = token = (await storage.read(key: "token"))!;
//     currentUser.id = (await storage.read(key: "id"));
//     currentUser.role = (await storage.read(key: "role"));
//     // currentUser!.fullName != (await storage.read(key: "name"));
//     currentUser.userName = (await storage.read(key: "userName"));
//     currentUser.deviceToken = (await storage.read(key: "deviceToken") ?? "");
//     if (kDebugMode) {
//       print("token : $token");
//     }
//   } catch (e) {
//     print(e.toString() + " sfsdl");
//   }
// }

Future<void> showMyDialog({context, onTap}) async {
  return showDialog<void>(
    context: context,

    barrierDismissible: false,
    // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 30),
        content: Container(
          // padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          width: widthScreen(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        pop(context);
                      },
                      child: SvgPicture.asset("assets/icons/close.svg")),
                ],
              ),
              SvgPicture.asset("assets/icons/location.svg"),
              const SizedBox(
                height: 16,
              ),
              const Texts(
                  title: "هل تسمح بالتطبيق بالوصول لموقعك ",
                  family: AppFonts.moS,
                  size: 12,
                  textColor: Colors.black,
                  widget: FontWeight.w700),
              const SizedBox(
                height: 23,
              ),
              GestureDetector(
                onTap: onTap,
                child: const Texts(
                    title: "نعم أسمح بذلك ",
                    family: AppFonts.moS,
                    size: 13,
                    textColor: Color(0xffB8B8B8),
                    widget: FontWeight.w700),
              ),
              const SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<void> showDialogSuccess({context, message}) {
  return showDialog<void>(
    context: context,

    barrierDismissible: false,
    // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 30),
        content: Container(
          // padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          width: widthScreen(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        pop(context);
                      },
                      child: SvgPicture.asset("assets/icons/close.svg")),
                ],
              ),
              SvgPicture.asset("assets/icons/successd.svg"),
              const SizedBox(
                height: 16,
              ),
              Texts(
                  title: message,
                  line: 2,
                  family: AppFonts.moB,
                  size: 18,
                  algin: TextAlign.center,
                  textColor: Colors.black,
                  widget: FontWeight.normal),
            ],
          ),
        ),
      );
    },
  );
}

Future saveData(key, value) async {
  const storage = FlutterSecureStorage();
  storage.write(key: key, value: value);
}

DateTime INIT_DATETIME = DateTime.now();
void showDateTimePicker2(context, {onConfirm}) {
  DateTime? dateAdded;
  showModalBottomSheet(
      context: context,
      // clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.white,
      // isScrollControlled: true,
      builder: (BuildContext bc) {
        return Container(
            height: 400,
            child: Column(
              children: [
                Expanded(
                  child: CupertinoDatePicker(
                      backgroundColor: Colors.white,
                      use24hFormat: false,
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: INIT_DATETIME,
                      // minuteInterval: 30,
                      onDateTimeChanged: (date) {
                        dateAdded = date;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                            onPressed: () {
                              onConfirm(dateAdded);
                            },
                            color: Palette.mainColor,
                            height: 40,
                            child: const Text("اختيار",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: MaterialButton(
                            onPressed: () {
                              pop(context);
                            },
                            color: Colors.red,
                            height: 40,
                            child: const Text(
                              "الغاء",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ));
      });
  ;
}

Future<void> showDialogLogin({context, message}) {
  return showDialog<void>(
    context: context,

    barrierDismissible: false,
    // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 30),
        content: Container(
          // padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          width: widthScreen(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        pop(context);
                      },
                      child: SvgPicture.asset("assets/icons/close.svg")),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Texts(
                  title: "من فضلك سجل الدخول حتي تتمكن من التسوق ",
                  line: 2,
                  family: AppFonts.moB,
                  size: 18,
                  algin: TextAlign.center,
                  textColor: Colors.black,
                  widget: FontWeight.normal),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                  title: "تسجيل الدخول",
                  onPressed: () {
                    pop(context);
                    pushPageRoutName(context, selectAccount);
                  })
            ],
          ),
        ),
      );
    },
  );
}

// Future getData(key)async{
//   const storage = FlutterSecureStorage();
//     try {
//    AppModel.page = (await storage.read(key: key)) ?? "";

//     print("AppModel.page : ${AppModel.page}");
//   } catch (e) {}

// }

// class PageModel {
//   int? number;

//   String? nameSurah;
//   List<Aya> ayates;

//   PageModel({this.number, this.nameSurah, this.ayates = const []});

//   factory PageModel.fromJson(Map<String, dynamic> json) => PageModel(
//       number: json["data"]["surahs"]["number"],
//       // pageNumber: json["data"]["surahs"]["number"],
//       nameSurah: json["data"]["surahs"]["name"],
//       ayates: List<Aya>.from((json["data"]["surahs"]["ayahs"] as List)
//           .map((e) => Aya.fromJson(e))));

//   toJson() => {
//         'number': number,
//         'nameSurah': nameSurah,
//         'ayates': ayates,
//       };
// }

// class Aya {
//   int? number;
//   String? audio;
//   List<String>? audioSecondary;
//   String? text;
//   int? numberInSurah;
//   int? juz;
//   int? manzil;
//   int? page;
//   int? ruku;
//   int? hizbQuarter;
//   String? sajda;

//   Aya(
//       {this.number,
//       this.audio,
//       this.audioSecondary,
//       this.text,
//       this.numberInSurah,
//       this.juz,
//       this.manzil,
//       this.page,
//       this.ruku,
//       this.hizbQuarter,
//       this.sajda});

//   Aya.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     audio = json['audio'];
//     audioSecondary = json['audioSecondary'].cast<String>();
//     text = json['text'];
//     numberInSurah = json['numberInSurah'];
//     juz = json['juz'];
//     manzil = json['manzil'];
//     page = json['page'];
//     ruku = json['ruku'];
//     hizbQuarter = json['hizbQuarter'];
//     sajda = json['sajda'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['number'] = this.number;
//     data['audio'] = this.audio;
//     data['audioSecondary'] = this.audioSecondary;
//     data['text'] = this.text;
//     data['numberInSurah'] = this.numberInSurah;
//     data['juz'] = this.juz;
//     data['manzil'] = this.manzil;
//     data['page'] = this.page;
//     data['ruku'] = this.ruku;
//     data['hizbQuarter'] = this.hizbQuarter;
//     data['sajda'] = this.sajda;
//     return data;
//   }
// }

//
void showBottomSheetWidget(context, child) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: true,
      builder: (context) {
        return child;
      });
}

void showDialogWidget(BuildContext context, Widget child) {
  showDialog<void>(
    context: context,

    barrierDismissible: false,
    // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.all(20),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        content: child,
      );
    },
  );
}

String formatDate(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd', "en");
  final String formatted = formatter.format(date);
  return formatted; // something like 2013-04-20
}

int createUniqueId() {
  return DateTime.now().millisecondsSinceEpoch.remainder(100000);
}
