import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/screens/Home.dart';
import 'package:practice/screens/Login.dart';
import 'package:practice/screens/OrderPage.dart';
import 'package:practice/screens/Splash.dart';
import 'package:practice/screens/StitchingTailer.dart';
import 'package:practice/screens/StitchingorderConfirm.dart';
import 'package:practice/screens/TailerProfile.dart';
import 'package:practice/utils/MyRoutes.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => StitchingModal(),
      child: const MyApp(),
    ),
  );
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
      initialRoute: MyRoutes.Home,
      routes: {
        MyRoutes.Home: (context) => const Home(),
        MyRoutes.Login: (context) => const Login(),
        MyRoutes.Splash: (context) => const Splash(),
        MyRoutes.TailerProfile: (context) => const TailerProfile(),
        MyRoutes.OrderPage: (context) => StitichingOrderPage(),
      },
      
    );
  }
}
