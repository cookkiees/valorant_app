import 'package:test/test.dart';
import 'package:valorant_app/app/core/models/agent/agent_base_models.dart';
import 'package:valorant_app/app/core/services/agents/agents_service.dart';

void main() {
  test('Test AgentsService fetchAgents', () async {
    final agentsService = AgentsService();
    final result = await agentsService.fetchAgents();

    expect(result.status, equals(200));

    expect(result, isA<AgentBaseModels>());
  });

  test('Test AgentsService apiUrl is not empty', () {
    final agentsService = AgentsService();

    expect(agentsService.apiUrl, isNotEmpty);
  });

  test('Test AgentsService client is not null', () {
    final agentsService = AgentsService();

    expect(agentsService.client, isNotNull);
  });
}
