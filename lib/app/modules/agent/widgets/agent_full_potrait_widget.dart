import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/selected_agent_id_provider.dart';

class AgentFullPotraitWidget extends ConsumerWidget {
  const AgentFullPotraitWidget({
    super.key,
    this.type = AgentFullPotraitPlatformType.mobile,
  });

  final AgentFullPotraitPlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentProvider);
    final selectedAgentId = ref.watch(selectedAgentIdProvider);
    return agents.when(
      data: (models) {
        var result = models.data[selectedAgentId];
        int colorValue = int.tryParse(
                '0x${result.backgroundGradientColors?[0] ?? 'FF0000'}') ??
            0xFF0000;

        return Container(
          padding: getPadding,
          margin: getMargin,
          decoration: BoxDecoration(
            image: result.fullPortrait != null
                ? DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(result.fullPortrait!),
                  )
                : null,
            gradient: getGradient(colorValue),
          ),
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

  EdgeInsetsGeometry get getPadding {
    switch (type) {
      case AgentFullPotraitPlatformType.mobile:
        return const EdgeInsets.only(top: 100);
      case AgentFullPotraitPlatformType.web:
        return EdgeInsets.zero;
      default:
        return EdgeInsets.zero;
    }
  }

  EdgeInsetsGeometry? get getMargin {
    switch (type) {
      case AgentFullPotraitPlatformType.mobile:
        return const EdgeInsets.only(bottom: 100);
      case AgentFullPotraitPlatformType.web:
        return EdgeInsets.zero;
      default:
        return EdgeInsets.zero;
    }
  }

  LinearGradient? getGradient(int value) {
    switch (type) {
      case AgentFullPotraitPlatformType.mobile:
        return LinearGradient(
          colors: [
            Color(value).withOpacity(0.5),
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 1.0],
        );
      case AgentFullPotraitPlatformType.web:
        return null;
      default:
        return null;
    }
  }
}

enum AgentFullPotraitPlatformType {
  web,
  mobile,
}
