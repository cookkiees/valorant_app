import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';

import '../../common/utils/app_background_painter.dart';
import '../../core/providers/maps/maps_provider.dart';

class MainWebScreen extends ConsumerStatefulWidget {
  const MainWebScreen({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<MainWebScreen> createState() => _MainWebScreenState();
}

class _MainWebScreenState extends ConsumerState<MainWebScreen> {
  late Timer _timer;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      ref.read(mapsProvider).whenData((maps) {
        setState(() {
          currentIndex = (currentIndex + 1) % maps.data!.length;
        });
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maps = ref.watch(mapsProvider);

    return Scaffold(
      body: Stack(
        children: [
          maps.when(
            data: (maps) {
              return Opacity(
                opacity: 0.3,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0,
                      image: NetworkImage(maps.data![currentIndex].splash!),
                    ),
                  ),
                ),
              );
            },
            error: (error, stackTrace) {
              return Text(error.toString());
            },
            loading: () => const CircularProgressIndicator.adaptive(),
          ),
          FadeIn(
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
                          widget.navigationShell,
                          _buildTopMenu(context),
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
        ],
      ),
    );
  }

  Container _buildLeftMenu(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 60,
      color: Colors.transparent,
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
                          color: widget.navigationShell.currentIndex == e.index
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
            child: InkWell(
              onTap: () => _onTap(e.index),
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
                          color: widget.navigationShell.currentIndex == e.index
                              ? Colors.white
                              : Colors.grey,
                          letterSpacing: 4,
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

  void _onTap(index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}

enum BottomNavbarMenu {
  agent,
  weapons,
  maps,
  bundles,
}
