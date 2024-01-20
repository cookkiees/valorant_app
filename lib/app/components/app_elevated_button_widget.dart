import 'package:flutter/material.dart';

class AppElevatedButtonWidget extends StatelessWidget {
  const AppElevatedButtonWidget({
    super.key,
    this.onPressed,
    this.child,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
    this.surfaceTintColor,
  });

  final void Function()? onPressed;
  final Widget? child;
  final double? radius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? surfaceTintColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        surfaceTintColor: surfaceTintColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}

class AppElevatedButtonIconWidget extends StatelessWidget {
  const AppElevatedButtonIconWidget({
    super.key,
    this.onPressed,
    this.label,
    this.icon,
    this.radius,
    this.backgroundColor,
    this.foregroundColor,
    this.surfaceTintColor,
  });

  final void Function()? onPressed;
  final Widget? label;
  final Widget? icon;
  final double? radius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? surfaceTintColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        surfaceTintColor: surfaceTintColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
      ),
      label: label ?? const SizedBox.shrink(),
      icon: icon ?? const SizedBox.shrink(),
    );
  }
}
