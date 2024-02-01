import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:valorant_app/app/core/helpers/app_logger.dart';

import '../../models/agent/agent_base_models.dart';

class AgentService {
  final String apiUrl = 'https://valorant-api.com/v1/agnts';
  Future<AgentBaseModels> fetchAgents() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final agents = AgentBaseModels.fromJson(jsonData);
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
