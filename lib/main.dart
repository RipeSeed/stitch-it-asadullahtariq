import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/screens/Home.dart';
import 'package:practice/screens/Login.dart';
import 'package:practice/screens/OrderPage.dart';
import 'package:practice/screens/OrderStart.dart';
import 'package:practice/screens/Splash.dart';
import 'package:practice/screens/StitchType.dart';
import 'package:practice/screens/StitchingDuration.dart';
import 'package:practice/screens/StitchingPrice.dart';
import 'package:practice/screens/StitchingSize.dart';
import 'package:practice/screens/StitchingTailer.dart';
import 'package:practice/screens/TailerProfile.dart';
import 'package:practice/utils/MyRoutes.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.cabin().fontFamily,
      ),
      initialRoute: MyRoutes.OrderPage,
      routes: {
        MyRoutes.Home: (context) => const Home(),
        MyRoutes.Login: (context) => const Login(),
        MyRoutes.Splash: (context) => const Splash(),
        MyRoutes.StitchingType: (context) => const StitchingType(),
        MyRoutes.StitchingSize: (context) => const StitchingSize(),
        MyRoutes.StitchingDuration: (context) => const StitchingDuration(),
        MyRoutes.StitchingPrice: (context) => const StitchingPrice(),
        MyRoutes.StitchingTailer: (context) => const StitchingTailer(),
        MyRoutes.TailerProfile: (context) => const TailerProfile(),
        MyRoutes.OrderPage: (context) => const StitichingOrderPage()
      },
      // onGenerateRoute: (settings) {
      //   print(settings);
      //   late Widget page;
      //   if (settings.name == MyRoutes.Home) {
      //     page = const Home();
      //   } else if (settings.name == MyRoutes.Login) {
      //     page = const Login();
      //   }

      //    else {
      //     throw Exception('Unknown route: ${settings.name}');
      //   }
      //   return MaterialPageRoute<dynamic>(
      //     builder: (context) {
      //       return page;
      //     },
      //     settings: settings,
      //   );
      // },
    );
  }
}
