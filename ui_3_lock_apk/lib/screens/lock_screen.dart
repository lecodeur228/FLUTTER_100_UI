import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:ui_3_lock_apk/screens/lock_card_widget.dart';
import 'package:ui_3_lock_apk/theme/colors.dart';
import 'package:ui_3_lock_apk/utils/screen_size.dart';
import 'package:ui_3_lock_apk/utils/text_size.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  List<Map<String, dynamic>> data = [
    {
      "name": "Whatsapp",
      "logo": "assets/whatsApp.png",
      "filterColor": const Color(0xffB5E1C0),
      "isLock": false,
    },
    {
      "name": "Photos",
      "logo": "assets/photo.png",
      "filterColor": const Color(0xffF0EBCB),
      "isLock": false,
    },
    {
      "name": "Facebook",
      "logo": "assets/faceboock.png",
      "filterColor": const Color(0xffCDDAEA),
      "isLock": false,
    },
    {
      "name": "Instagram",
      "logo": "assets/insta.png",
      "filterColor": const Color(0xffE9CAD9),
      "isLock": false,
    },
    {
      "name": "Telegram",
      "logo": "assets/telegram.png",
      "filterColor": const Color(0xffCDDAEA),
      "isLock": false,
    },
    {
      "name": "Whatsapp",
      "logo": "assets/whatsApp.png",
      "filterColor": const Color(0xffB5E1C0),
      "isLock": false,
    },
    {
      "name": "Maps",
      "logo": "assets/maps.png",
      "filterColor": const Color(0xffF0EBCB),
      "isLock": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.width,
        height: context.height,
        padding: EdgeInsets.symmetric(horizontal: context.heightPercent(1)),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              backgroundColor,
              const Color(0xffDBE9F6),
            ])),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: context.heightPercent(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: HeroIcon(
                      style: HeroIconStyle.solid,
                      HeroIcons.arrowLeft,
                      color: textColor,
                    )),
                IconButton(
                    onPressed: () {
                      // Navigator.pop(context);
                    },
                    icon: HeroIcon(
                      style: HeroIconStyle.solid,
                      HeroIcons.cog6Tooth,
                      color: textColor,
                    )),
              ],
            ),
            SizedBox(
              height: context.heightPercent(2),
            ),
            Padding(
              padding: EdgeInsets.only(left: context.heightPercent(2)),
              child: Text(
                "Applock",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: primaryColor,
                        fontSize: context.t1,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: context.heightPercent(2),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.widthPercent(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(
                              context.widthPercent(37),
                              context.heightPercent(6))),
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor),
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: const Text("Unlocked")),
                  TextButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(
                              context.widthPercent(35),
                              context.heightPercent(6))),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          foregroundColor:
                              MaterialStatePropertyAll(primaryColor)),
                      onPressed: () {},
                      child: const Text("Locked")),
                ],
              ),
            ),
            SizedBox(
              height: context.heightPercent(4),
            ),
            Padding(
              padding: EdgeInsets.only(left: context.heightPercent(2)),
              child: Text(
                "Recommended Apps",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: primaryColor,
                        fontSize: context.t3,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: context.heightPercent(2),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return LockCardWidget(data: data[index]);
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
