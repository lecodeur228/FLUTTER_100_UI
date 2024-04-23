import 'package:flutter/material.dart';
import 'package:ui_1/utils/screen.dart';
import 'package:ui_1/utils/text.dart';

class DetailContainerWidget extends StatelessWidget {
  final List<Map<String, dynamic>> listes;
  const DetailContainerWidget({super.key, required this.listes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.heightPercent(15),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listes.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> item = listes[index];
          return SizedBox(
            width: context.widthPercent(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item["icon"],
                  size: context.t0,
                ),
                SizedBox(
                  height: context.heightPercent(1),
                ),
                Text(item["number"],
                    style: TextStyle(
                        fontSize: context.t2,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
                // SizedBox(
                //   height: context.heightPercent(1),
                // ),
                Text(
                  item["word"],
                  style: TextStyle(
                      fontSize: context.p1,
                      color: Colors.white70,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
