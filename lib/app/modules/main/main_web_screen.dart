import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';

import '../../common/utils/app_background_painter.dart';

class MainWebScreen extends StatelessWidget {
  const MainWebScreen({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        delay: const Duration(milliseconds: 650),
        child: CustomPaint(
          painter: AppBackgroundPainter(),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  _buildLeftMenu(context),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/logos/valorant-rounded.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
              VerticalDivider(
                  width: 1, thickness: 0.5, color: Colors.grey[300]),
              Expanded(
                child: SizedBox(
                  child: Stack(
                    children: [
                      _buildTopMenu(context),
                      navigationShell,
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                  width: 1, thickness: 0.5, color: Colors.grey[300]),
              Container(
                height: double.infinity,
                width: 60,
                padding: const EdgeInsets.only(bottom: 10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildLeftMenu(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 60,
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: BottomNavbarMenu.values.map((e) {
          return Flexible(
            child: Padding(
              padding: EdgeInsets.only(bottom: context.screenHeight * 0.025),
              child: FadeInDown(
                from: 100 * e.index.toDouble(),
                duration: const Duration(milliseconds: 600),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: InkWell(
                    onTap: () => _onTap(e.index),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        e.name.toUpperCase(),
                        style: TextStyle(
                          fontSize: 10,
                          color: navigationShell.currentIndex == e.index
                              ? Colors.white
                              : Colors.grey,
                          letterSpacing: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Container _buildTopMenu(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: BottomNavbarMenu.values.map((e) {
          return Flexible(
            child: Padding(
              padding: EdgeInsets.only(right: context.screenWidth * 0.025),
              child: FadeInLeft(
                duration: const Duration(milliseconds: 600),
                from: 100 * e.index.toDouble(),
                child: InkWell(
                  onTap: () => _onTap(e.index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      e.name.toUpperCase(),
                      style: TextStyle(
                        fontSize: 10,
                        color: navigationShell.currentIndex == e.index
                            ? Colors.white
                            : Colors.grey,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

enum BottomNavbarMenu {
  agent,
  weapons,
  maps,
  bundles,
}
