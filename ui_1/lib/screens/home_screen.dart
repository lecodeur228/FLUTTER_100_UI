import 'package:flutter/material.dart';
import 'package:ui_1/utils/screen.dart';
import 'package:ui_1/utils/text.dart';
import 'package:ui_1/widgets/detail_conatainer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Map<String, dynamic>> listes = [
    {
      "icon": Icons.wind_power,
      "number": "10 m/s",
      "word": "Wind",
    },
    {
      "icon": Icons.water_drop_outlined,
      "number": "98%",
      "word": "Humidity",
    },
    {
      "icon": Icons.cloud_circle_outlined,
      "number": "100%",
      "word": "Rain",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.widthPercent(4)),
        child: Column(
          children: [
            SizedBox(
              height: context.heightPercent(1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    Text(
                      "Lomé",
                      style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          fontSize: context.t4,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lundi,22 Avril",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: context.p1,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                const Icon(Icons.more_vert),
              ],
            ),
            SizedBox(
              height: context.heightPercent(4),
            ),
            Stack(
              children: [
                Image.asset("assets/images/map.png"),
                Column(
                  children: [
                    SizedBox(
                      height: context.heightPercent(10),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/rain.png",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: context.heightPercent(10)),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "23°",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 110,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: context.heightPercent(4),
            ),
            DetailContainerWidget(listes: listes),
            SizedBox(
              height: context.heightPercent(4),
            ),
            Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(color: Colors.white, fontSize: context.t2),
                ),
                SizedBox(
                  width: context.widthPercent(2),
                ),
                Text(
                  "Tomorrow",
                  style: TextStyle(color: Colors.white70, fontSize: context.p2),
                ),
                SizedBox(
                  width: context.widthPercent(2),
                ),
                Text(
                  "Next 7 Days",
                  style: TextStyle(color: Colors.white70, fontSize: context.p2),
                ),
              ],
            ),
            SizedBox(
              width: context.heightPercent(4),
            ),
            SizedBox(
              height: context.heightPercent(20),
              width: context.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 500),
                      height: selectedIndex == index
                          ? context.heightPercent(19)
                          : context.heightPercent(18),
                      margin: EdgeInsets.all(context.heightPercent(1)),
                      width: context.widthPercent(25),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        gradient: selectedIndex == index
                            ? const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                    Color(0xFFBF07F2),
                                    Color(0xFF525AF2),
                                  ])
                            : null,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${index + 1} am",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: context.t4,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: context.heightPercent(1),
                          ),
                          Image.asset(
                            "assets/images/rain.png",
                            width: context.widthPercent(17),
                          ),
                          SizedBox(
                            height: context.heightPercent(1),
                          ),
                          Text(
                            "26°",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: context.t4,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
