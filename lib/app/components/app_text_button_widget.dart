import 'package:flutter/material.dart';

class AppTextButtonWidget extends StatelessWidget {
  const AppTextButtonWidget({super.key, this.child, this.icon, this.onPressed});

  final Widget? child;
  final Widget? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(),
      child: child ?? const SizedBox.shrink(),
    );
  }
}

class AppTextButtonIconWidget extends StatelessWidget {
  const AppTextButtonIconWidget(
      {super.key, this.label, this.icon, this.onPressed});

  final Widget? label;
  final Widget? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(),
      label: label ?? const SizedBox.shrink(),
      icon: icon ?? const SizedBox.shrink(),
    );
  }
}
