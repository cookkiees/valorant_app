import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
  static void logInfo(String message) {
    if (kDebugMode) {
      print('INFO: $message');
    }
  }

  static void logError(String message) {
    if (kDebugMode) {
      log('ERROR: $message');
    }
  }

  static void logDebug(String message) {
    if (kDebugMode) {
      print('DEBUG: $message');
    }
  }

  static void logNotif(String message) {
    if (kDebugMode) {
      print('NOTIF: $message');
    }
  }
}
