import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../helpers/app_logger.dart';
import '../../models/weapons/weapons_base_models.dart';

class WeaponsService {
  final String apiUrl = 'https://valorant-api.com/v1/weapons';
  Future<WeaponsBaseModels> fetchWeapons() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final agents = WeaponsBaseModels.fromJson(jsonData);
      AppLogger.debugPrint(response);
      return agents;
    } else {
      AppLogger.debugPrint(response);
      throw Exception(
        'Request failed with status code: ${response.statusCode}',
      );
    }
  }
}
