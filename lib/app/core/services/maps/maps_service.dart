import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:valorant_app/app/core/models/maps/maps_base_models.dart';

import '../../helpers/app_logger.dart';

class MapsService {
  final String apiUrl = 'https://valorant-api.com/v1/maps';
  Future<MapsBaseModels> fetchMaps() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final maps = MapsBaseModels.fromJson(jsonData);
      AppLogger.debugPrint(response);
      return maps;
    } else {
      AppLogger.debugPrint(response);
      throw Exception(
        'Request failed with status code: ${response.statusCode}',
      );
    }
  }
}
