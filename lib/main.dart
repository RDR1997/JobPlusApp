import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_plus/Views/OnBordingUi.dart';
import 'package:job_plus/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FutureBuilder<bool>(
        future: checkFirstRun(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.data == true) {
            // It's the first run, show the Onboarding page.
            return const OnBoarding();
          } else {
            // Not the first run, show the Login page.
            return const Splash();
            // return NavBar();
          }
        },
      ),
    );
  }

  Future<bool> checkFirstRun() async {
    final prefs = await SharedPreferences.getInstance();
    final firstRun = prefs.getBool('firstRun') ?? true;

    if (firstRun) {
      // It's the first run, set the flag to false for subsequent runs.
      await prefs.setBool('firstRun', false);
    }

    return firstRun;
  }
}
