import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

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

  static Future<void> debugPrint(Response response) async {
    AppLogger.logDebug('--------------- REQUEST & RESPONSE ---------------');
    AppLogger.logDebug('Request: ${response.request}');
    AppLogger.logDebug('Status: ${response.statusCode}');
    AppLogger.logDebug('Headers: ${response.headers.values}');
    // AppLogger.logDebug('Response Body: ${response.body}');
    AppLogger.logDebug('--------------------------------------------------');
  }
}
