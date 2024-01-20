import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'dart:math' as math;

import '../../common/utils/app_background_painter.dart';

class MainMobileScreen extends StatefulWidget {
  const MainMobileScreen({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  State<MainMobileScreen> createState() => _MainMobileScreenState();
}

class _MainMobileScreenState extends State<MainMobileScreen>
    with SingleTickerProviderStateMixin {
  bool isShowMenu = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: CustomPaint(
        painter: AppBackgroundPainter(),
        child: Container(
          child: widget.navigationShell,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
            child: AnimatedContainer(
              width: 120,
              height: 120,
              duration: const Duration(milliseconds: 500),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: isShowMenu ? 1 : 0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildAnimatedCurvedText(
                      text: 'AGENT',
                      startAngle: -5 * math.pi / 7,
                    ),
                    _buildAnimatedCurvedText(
                      text: 'WEAPONS',
                      startAngle: -3 * math.pi / 7.5,
                    ),
                    _buildAnimatedCurvedText(
                      text: 'MAPS',
                      startAngle: math.pi / 20,
                    ),
                    _buildAnimatedCurvedText(
                      text: 'BUNDLES',
                      startAngle: math.pi / 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (isShowMenu)
            Positioned(
              left: 110,
              bottom: 16,
              child: InkWell(
                splashColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () => _onTap(0),
                child: Container(
                  height: 60,
                  width: 40,
                  color: Colors.transparent,
                ),
              ),
            ),
          if (isShowMenu)
            Positioned(
              left: 120,
              bottom: 80,
              child: InkWell(
                splashColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () => _onTap(1),
                child: Container(
                  height: 60,
                  width: 70,
                  color: Colors.transparent,
                ),
              ),
            ),
          if (isShowMenu)
            Positioned(
              right: 134,
              bottom: 92,
              child: InkWell(
                splashColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () => _onTap(2),
                child: Container(
                  height: 40,
                  width: 46,
                  color: Colors.transparent,
                ),
              ),
            ),
          if (isShowMenu)
            Positioned(
              right: 114,
              bottom: 16,
              child: InkWell(
                splashColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                onTap: () => _onTap(3),
                child: Container(
                  height: 72,
                  width: 30,
                  color: Colors.transparent,
                ),
              ),
            ),
          12.height,
          AnimatedAlign(
            alignment: Alignment.bottomCenter,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                setState(() {
                  isShowMenu = !isShowMenu;
                  isShowMenu ? _controller.forward() : _controller.reverse();
                });
              },
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: SvgPicture.asset(
                  'assets/logos/valorant-outline.svg',
                  colorFilter: ColorFilter.mode(
                    isShowMenu ? Colors.red : Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedCurvedText(
      {required String text, required double startAngle}) {
    return CurvedText(
      radius: 56,
      text: text,
      startAngle: startAngle,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        shadows: [
          BoxShadow(),
        ],
      ),
    );
  }

  void _onTap(index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
    setState(() {
      isShowMenu = !isShowMenu;
      isShowMenu ? _controller.forward() : _controller.reverse();
    });
  }
}

class CurvedText extends StatelessWidget {
  final double radius;
  final String text;
  final double startAngle;
  final TextStyle textStyle;

  const CurvedText({
    super.key,
    required this.radius,
    required this.text,
    required this.startAngle,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _Painter(
          radius,
          text,
          textStyle,
          initialAngle: startAngle,
        ),
      );
}

class _Painter extends CustomPainter {
  _Painter(this.radius, this.text, this.textStyle, {this.initialAngle = 0});

  final num radius;
  final String text;
  final double initialAngle;
  final TextStyle textStyle;

  final _textPainter = TextPainter(textDirection: TextDirection.ltr);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2 - radius);

    if (initialAngle != 0) {
      final d = 2 * radius * math.sin(initialAngle / 2);
      final rotationAngle = _calculateRotationAngle(0, initialAngle);
      canvas.rotate(rotationAngle);
      canvas.translate(d, 0);
    }

    double angle = initialAngle;
    for (int i = 0; i < text.length; i++) {
      angle = _drawLetter(canvas, text[i], angle);
    }
  }

  double _drawLetter(Canvas canvas, String letter, double prevAngle) {
    _textPainter.text = TextSpan(text: letter, style: textStyle);
    _textPainter.layout(
      minWidth: 0,
      maxWidth: double.maxFinite,
    );

    final double d = _textPainter.width;
    final double alpha = 2 * math.asin(d / (2 * radius));

    final newAngle = _calculateRotationAngle(prevAngle, alpha);
    canvas.rotate(newAngle);

    _textPainter.paint(canvas, Offset(0, -_textPainter.height));
    canvas.translate(d, 0);

    return alpha;
  }

  double _calculateRotationAngle(double prevAngle, double alpha) {
    final double rotationAngle = (alpha + prevAngle) / 2;

    return rotationAngle;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
