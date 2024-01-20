import 'package:flutter/material.dart';

extension ShowDialogExtension on BuildContext {
  void showDialogWidget({required Widget dialogContent}) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          content: dialogContent,
        );
      },
    );
  }

  void showDialogText({required String message}) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
