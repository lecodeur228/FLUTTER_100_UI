import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:ui_3_lock_apk/screens/home_screen.dart';
import 'package:ui_3_lock_apk/theme/colors.dart';
import 'package:ui_3_lock_apk/utils/screen_size.dart';
import 'package:ui_3_lock_apk/utils/text_size.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: context.width,
        height: context.height,
        padding: EdgeInsets.all(context.t2),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              backgroundColor,
              const Color(0xffDBE9F6),
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: HeroIcon(
                  HeroIcons.fingerPrint,
                  color: primaryColor,
                  size: context.heightPercent(20),
                ),
              ),
              SizedBox(
                height: context.heightPercent(5),
              ),
              Text("Protect your\nprivacy",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: context.t0,
                  ))),
              SizedBox(
                height: context.heightPercent(3),
              ),
              Text("With AppLock you can set app \n passwords and block calls",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: textColor,
                      fontSize: context.t4,
                    ),
                  )),
              SizedBox(
                height: context.heightPercent(2),
              ),
              Row(
                children: [
                  Text(
                    "Start",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: context.t3,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.widthPercent(5),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())));
                    },
                    icon: HeroIcon(
                      HeroIcons.arrowRight,
                      color: primaryColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
