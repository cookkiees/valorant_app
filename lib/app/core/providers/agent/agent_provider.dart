import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:valorant_app/app/core/models/agent/agent_base_models.dart';

import '../../services/agent/agent_service.dart';

part 'agent_provider.g.dart'; // Add this line

@riverpod
AgentService agentService(AgentServiceRef ref) {
  return AgentService();
}

@riverpod
Future<AgentBaseModels?> agent(AgentRef ref) async {
  return ref.read(agentServiceProvider).fetchAgents();
}
