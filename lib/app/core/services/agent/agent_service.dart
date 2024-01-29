import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/agent/agent_base_models.dart';

class AgentService {
  final String apiUrl = 'https://valorant-api.com/v1/agents';
  Future<AgentBaseModels?> fetchAgents() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        final agents = AgentBaseModels.fromJson(jsonData);

        return agents;
      } else {
        // If the server did not return a 200 OK response,
        // return an exception.
        return null;
      }
    } catch (e) {
      // Handle other exceptions that may occur during the request.
      return null;
    }
  }
}
