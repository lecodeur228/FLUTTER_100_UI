import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:ui_3_lock_apk/screens/lock_screen.dart';
import 'package:ui_3_lock_apk/theme/colors.dart';
import 'package:ui_3_lock_apk/utils/screen_size.dart';
import 'package:ui_3_lock_apk/utils/text_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> options = [
    {"title": "Password type", "icon": Icons.password},
    {"title": "Themes", "icon": Icons.color_lens_sharp},
    {"title": "Fake icon", "icon": Icons.face},
    {"title": "Intruder selfie", "icon": Icons.person_2},
  ];

  List<String> logos = [
    "assets/whatsApp.png",
    "assets/photo.png",
    "assets/faceboock.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(context.heightPercent(2)),
        width: context.width,
        height: context.height,
        color: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.heightPercent(10),
            ),
            Text(
              "HELLO",
              style: GoogleFonts.roboto(
                  textStyle:
                      TextStyle(color: Colors.white, fontSize: context.t1)),
            ),
            SizedBox(
              height: context.heightPercent(1),
            ),
            Text(
              "protect your privacy",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: Colors.white70,
                fontSize: context.t4,
              )),
            ),
            SizedBox(
              height: context.heightPercent(4),
            ),
            Container(
              padding: EdgeInsets.all(context.heightPercent(2)),
              width: double.infinity,
              height: context.heightPercent(17),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Applock",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: context.t3,
                            fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nice to meet you",
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: context.p1,
                            )),
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < logos.length; i++)
                                Align(
                                  widthFactor: 0.5,
                                  child: Container(
                                      margin: const EdgeInsets.all(5),
                                      width: 35,
                                      height: 35,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(logos[i])),
                                ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const LockScreen())));
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle),
                          child: const Center(
                            child: HeroIcon(
                              style: HeroIconStyle.solid,
                              HeroIcons.lockClosed,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: context.heightPercent(2),
            ),
            Text(
              "More Features",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: context.t2,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: context.heightPercent(1),
            ),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(context.widthPercent(3)),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle),
                          child: Center(
                              child: Icon(
                            options[index]["icon"],
                            color: Colors.white,
                          )),
                        ),
                        SizedBox(
                          height: context.heightPercent(1),
                        ),
                        Text(
                          options[index]["title"],
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
