import 'package:flutter/material.dart';

class AppOutlineButtonWidget extends StatelessWidget {
  const AppOutlineButtonWidget({
    super.key,
    this.onPressed,
    this.child,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
    this.surfaceTintColor,
  });

  final Widget? child;
  final void Function()? onPressed;
  final double? radius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? surfaceTintColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        surfaceTintColor: surfaceTintColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
      ),
      child: child,
    );
  }
}

class AppOutlineButtonIconWidget extends StatelessWidget {
  const AppOutlineButtonIconWidget({
    super.key,
    this.onPressed,
    this.child,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
    this.surfaceTintColor,
  });

  final Widget? child;
  final void Function()? onPressed;
  final double? radius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? surfaceTintColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        surfaceTintColor: surfaceTintColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
      ),
      child: child,
    );
  }
}
