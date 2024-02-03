import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/state_provider.dart';

class AgentNameWidget extends ConsumerWidget {
  const AgentNameWidget({super.key, this.type = AgentNamePlatformType.mobile});

  final AgentNamePlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentProvider);
    final selectedAgentId = ref.watch(selectedAgentIdProvider);
    return agents.when(
      data: (models) {
        String displayName = models.data[selectedAgentId].displayName ?? '';

        return Text(
          displayName.toUpperCase(),
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
      case AgentNamePlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case AgentNamePlatformType.web:
        return TextStyle(
          fontSize: context.screenWidth * 0.04,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
      default:
        return const TextStyle();
    }
  }
}

enum AgentNamePlatformType {
  web,
  mobile,
}
