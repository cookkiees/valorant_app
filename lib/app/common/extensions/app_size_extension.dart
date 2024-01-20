import 'package:flutter/material.dart';

extension AppSizeBoxExtension on int {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());

  Widget get sliverHeight => SliverToBoxAdapter(
        child: SizedBox(height: toDouble()),
      );
  Widget get sliverWidth => SliverToBoxAdapter(
        child: SizedBox(width: toDouble()),
      );
}

extension AppMediaQueryExtension on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  double get viewInsetsBottom => MediaQuery.of(this).viewInsets.bottom;
  double get viewInsetsLeft => MediaQuery.of(this).viewInsets.left;
  double get viewInsetsRight => MediaQuery.of(this).viewInsets.right;
  double get viewInsetsTop => MediaQuery.of(this).viewInsets.top;
}
