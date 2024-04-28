import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:ui_2/utils/screen_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: context.heightPercent(1),
            ),
            Container(
              height: context.heightPercent(5),
              width: context.width,
              margin: EdgeInsets.symmetric(
                  horizontal: context.widthPercent(3),
                  vertical: context.heightPercent(1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  Container(
                    width: context.widthPercent(70),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          prefixIcon: HeroIcon(HeroIcons.magnifyingGlass)),
                    ),
                  ),
                  const HeroIcon(
                    HeroIcons.folder,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.heightPercent(2),
            ),
            Container(
              // padding: EdgeInsets.all(context.widthPercent(10)),
              margin: EdgeInsets.all(context.widthPercent(2)),
              height: context.heightPercent(25),
              width: context.widthPercent(90),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white.withOpacity(0.2)),
              ),
              child: Column(
                children: [
                  Transform(
                    transform: Matrix4.rotationY(2),
                    child: const HeroIcon(
                      HeroIcons.wifi,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
