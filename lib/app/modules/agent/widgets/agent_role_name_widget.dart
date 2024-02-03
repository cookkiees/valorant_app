import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/state_provider.dart';

class AgentRoleNameWidget extends ConsumerWidget {
  const AgentRoleNameWidget(
      {super.key, this.type = AgentRoleNamePlatformType.mobile});

  final AgentRoleNamePlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentProvider);
    final selectedAgentId = ref.watch(selectedAgentIdProvider);
    return agents.when(
      data: (models) {
        String displayName =
            models.data[selectedAgentId].role?.displayName ?? '';
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
      case AgentRoleNamePlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case AgentRoleNamePlatformType.web:
        return TextStyle(
          fontSize: context.screenWidth * 0.036,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 5,
        );
      default:
        return const TextStyle();
    }
  }
}

enum AgentRoleNamePlatformType {
  web,
  mobile,
}
