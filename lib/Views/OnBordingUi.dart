import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:job_plus/constants.dart';
import 'package:job_plus/splash.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  OnBoardingState createState() => OnBoardingState();
}

class OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Get.off(const Splash());
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  // Widget _buildImage(String assetName, [double width = 260]) {
  //   return Column(
  //     children: [
  //       const SizedBox(
  //         height: 100,
  //       ),
  //       Image.asset('assets/images/$assetName', width: width)
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var bodyStyle = TextStyle(
      color: fontColor2,
      fontFamily: 'Roboto',
      fontSize: 15,
      fontWeight: FontWeight.w400,
      // color: HexColor('#4d4d4d')
    );
    var titleStyle = TextStyle(
        fontFamily: 'Roboto',
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: fontColor1);

    var titleStyleBig = TextStyle(
        fontFamily: 'Roboto',
        fontSize: 38,
        fontWeight: FontWeight.w600,
        color: fontColor1);

    var pageDecoration = PageDecoration(
        imagePadding: const EdgeInsets.only(bottom: 0),
        contentMargin: const EdgeInsets.only(left: 10.0, right: 10),
        titleTextStyle: titleStyle,
        titlePadding: const EdgeInsets.only(top: 60.0, bottom: 24.0),
        footerPadding: const EdgeInsets.only(bottom: 0.0),
        bodyTextStyle: bodyStyle,

        // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        pageColor: Colors.white,
        safeArea: 0);

    var fullPageDecoration = PageDecoration(
        imagePadding: const EdgeInsets.only(bottom: 0),
        contentMargin: const EdgeInsets.only(left: 10.0, right: 10),
        titleTextStyle: titleStyleBig,
        titlePadding: const EdgeInsets.only(top: 60, bottom: 24.0),
        footerPadding: const EdgeInsets.only(bottom: 0.0),
        bodyTextStyle: bodyStyle,

        // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        pageColor: Colors.white,
        safeArea: 0);

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      // autoScrollDuration: 3000,

      pages: [
        PageViewModel(
            title: "Find your job",
            body:
                "Use keywords related to your skill set, interests, and preferred location to search for jobs.",
            image: Image.asset('assets/images/OnBording1.png'),
            decoration: pageDecoration),
        PageViewModel(
          title: "Make Your Career",
          body:
              "Take note of positions that align with your skills, experience, and career goals.",
          image: Image.asset('assets/images/OnBording2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Find Your Dream Job Today!",
          body:
              "Keep track of the jobs you've applied to, interview dates, and follow-up actions.",
          image: Image.asset('assets/images/OnBording3.png'),
          decoration: fullPageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: Icon(Icons.arrow_back, color: fontColor1),
      skip: Text('Skip',
          style: TextStyle(fontWeight: FontWeight.w600, color: fontColor1)),
      next: Icon(Icons.arrow_forward, color: fontColor1),
      done: Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: fontColor1)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: colortheam4,
        activeSize: const Size(22.0, 10.0),
        activeColor: colortheam1,
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
