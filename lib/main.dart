import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pink_doctor/bookings/bloc/shopping_booking_cubit/shopping_booking_cubit.dart';

import 'package:pink_doctor/core/router/routes.dart';
import 'package:pink_doctor/core/styles/thems.dart';
import 'package:pink_doctor/bookings/ui/navigation_screen/navigation_screen.dart';

import 'bookings/bloc/home_cubit/home_cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale("ar"), Locale("en")],
        path: "assets/i18n",
        // <-- change the path of the translation files
        fallbackLocale: const Locale("ar"),
        startLocale: const Locale("ar"),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
          BlocProvider<HomeCubit>(create: (BuildContext context) => HomeCubit()),
           BlocProvider<ShoppingBookingCubit>(create: (BuildContext context) => ShoppingBookingCubit()),
      ],
      child: MaterialApp(
          navigatorKey: MyApp.navigatorKey,
          title: 'Flutter Demo',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: lightTheme(context),
          initialRoute: splash,
          routes: {
            splash: (context) => const NavigationScreen(),
            // selectAccount: (context) => const SelectTypeAccountScreen(),
            // login: (context) => const LoginScreen(),
            // createProvider: (context) => const CreateAccountProviderScreen(),
            // homeProvider: (context) => HomeProviderScreen(),
            // homeUser: (context) => HomeUserScreen(),
            // navUser: (context) => const NavigationUserScreen(),
            // // detailsProvider: (context) => const DetailsProviderScreen(),
            // cart: (context) => const CartsScreen(),
            // fav: (context) => FavoriteScreen(),
            // notyUser: (context) => NotificationsScreen(),
            // abouteUs: (context) => AboutUsScreen(),
            // praivcy: (context) => PrivacyScreen(),
            // navProvider: (context) => NavigationProviderScreen(),
            // statistics: (context) => StatisticsScreen(),
            // quizscreen: (context) => QuizScreen(),
          }),
    );
  }
}
