import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_3_lock_apk/theme/colors.dart';
import 'package:ui_3_lock_apk/utils/screen_size.dart';
import 'package:ui_3_lock_apk/utils/text_size.dart';

class LockCardWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  const LockCardWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.heightPercent(12),
      margin: EdgeInsets.symmetric(
          horizontal: context.widthPercent(3),
          vertical: context.heightPercent(1)),
      padding: EdgeInsets.symmetric(
          horizontal: context.widthPercent(4),
          vertical: context.heightPercent(2)),
      decoration: BoxDecoration(
        color: const Color(0xffF1F6FA),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: data["filterColor"],
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(data["logo"]),
            ),
          ),
          SizedBox(
            width: context.widthPercent(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data["name"],
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: textColor,
                        fontSize: context.t3,
                        fontWeight: FontWeight.bold)),
              ),
              Text(
                "Protected",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: context.t4,
                        fontWeight: FontWeight.normal)),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.lock_open_outlined,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}
