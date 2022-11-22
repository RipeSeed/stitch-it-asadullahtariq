import 'package:flutter/material.dart';
import 'package:practice/screens/Home.dart';
import 'package:practice/screens/Login.dart';
import 'package:practice/screens/OrderStart.dart';
import 'package:practice/screens/Splash.dart';
import 'package:practice/screens/StitchType.dart';
import 'package:practice/screens/StitchingDuration.dart';
import 'package:practice/screens/StitchingPrice.dart';
import 'package:practice/screens/StitchingSize.dart';
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
      ),
      initialRoute: MyRoutes.StitchingPrice,
      routes: {
        MyRoutes.Home: (context) => const Home(),
        MyRoutes.Login: (context) => const Login(),
        MyRoutes.Splash: (context) => const Splash(),
        MyRoutes.OrderStart: (context) => const OrderStart(),
        MyRoutes.StitchingType: (context) => const StitchingType(),
        MyRoutes.StitchingSize: (context) => const StitchingSize(),
        MyRoutes.StitchingDuration: (context) => const StitchingDuration(),
        MyRoutes.StitchingPrice: (context) => const StitchingPrice(),
      },
    );
  }
}
