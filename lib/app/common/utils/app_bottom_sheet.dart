import 'package:flutter/material.dart';

extension ShowBottomSheetExtension on BuildContext {
  void showBottomSheetWidget({required Widget bottomSheetContent}) {
    showModalBottomSheet(
      context: this,
      builder: (BuildContext context) {
        return bottomSheetContent;
      },
    );
  }

  void showBottomSheetText({required String message}) {
    showModalBottomSheet(
      context: this,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(message),
        );
      },
    );
  }
}
