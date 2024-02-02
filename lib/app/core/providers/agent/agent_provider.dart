import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:valorant_app/app/core/models/agent/agent_base_models.dart';

import '../../services/agents/agents_service.dart';

part 'agent_provider.g.dart';

@riverpod
AgentsService agentService(AgentServiceRef ref) {
  return AgentsService();
}

@riverpod
Future<AgentBaseModels> agent(AgentRef ref) {
  return ref.read(agentServiceProvider).fetchAgents();
}
