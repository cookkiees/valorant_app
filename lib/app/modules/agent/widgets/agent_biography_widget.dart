import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/selected_agent_id_provider.dart';

class AgentBiographyWidget extends ConsumerWidget {
  const AgentBiographyWidget(
      {super.key, this.type = AgentBiographyPlatformType.mobile});

  final AgentBiographyPlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentProvider);
    final selectedAgentId = ref.watch(selectedAgentIdProvider);
    return agents.when(
      data: (models) {
        String description = models.data[selectedAgentId].description ?? '';
        return Text(
          description,
          style: getTextStyle(context),
        );
      },
      error: (error, stackTrace) {
        return Text(error.toString());
      },
      loading: () {
        return const CircularProgressIndicator.adaptive();
      },
    );
  }

  TextStyle getTextStyle(BuildContext context) {
    switch (type) {
      case AgentBiographyPlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case AgentBiographyPlatformType.web:
        return const TextStyle(
          fontSize: 14,
          color: Colors.white54,
        );
      default:
        return const TextStyle();
    }
  }
}

enum AgentBiographyPlatformType {
  web,
  mobile,
}
