import 'package:flutter/material.dart';

class AppIconButtonWidget extends StatelessWidget {
  const AppIconButtonWidget({super.key, this.onPressed, this.icon});

  final void Function()? onPressed;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(),
      icon: icon ?? const SizedBox.shrink(),
    );
  }
}

class AppIconButtonIconOutlinedWidget extends StatelessWidget {
  const AppIconButtonIconOutlinedWidget({super.key, this.onPressed, this.icon});

  final void Function()? onPressed;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(),
      icon: icon ?? const SizedBox.shrink(),
    );
  }
}

class AppIconButtonIconFilledWidget extends StatelessWidget {
  const AppIconButtonIconFilledWidget({super.key, this.onPressed, this.icon});

  final void Function()? onPressed;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(),
      icon: icon ?? const SizedBox.shrink(),
    );
  }
}
