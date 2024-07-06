import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_plus/Views/Login.dart';
import 'package:job_plus/constants.dart';
import 'dart:math' as math;

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final Width = MediaQuery.of(context).size.width;
    // Delayed navigation to the login page after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(Login());
    });
    return Center(
      child: Scaffold(
        body: Container(
          width: Width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                colortheam5,
                colortheam2,
              ],
            ),
          ),
          child: Center(
              child: SizedBox(
                  height: 200,
                  child: Transform.rotate(
                    angle: 1 * math.pi / 180, // 5 degrees to radians
                    child: Image.asset(
                      '/images/logo.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ))),
        ),
      ),
    );
  }
}
