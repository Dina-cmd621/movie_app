import 'package:flutter/material.dart';
import 'package:flutter_movie_app/AppColors.dart';
import 'package:flutter_movie_app/Home_Screem.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashScreenTimer() async {
    await Future.delayed(const Duration(seconds: 10)).then(
      (value) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    splashScreenTimer();
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch    ,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(),
          const Spacer(),
          Image.asset(
            "assets/images/movies.png",
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          const Spacer(),
          Image.asset("assets/images/route.png"),
          Image.asset("assets/images/supervised by Mohamed Nabil.png"),
        ],
      ),
    );
  }
}
