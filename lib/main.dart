import 'package:flutter/material.dart';
import 'package:flutter_movie_app/Home_Screem.dart';
import 'package:flutter_movie_app/My_Theme_Data.dart';
import 'package:flutter_movie_app/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}
