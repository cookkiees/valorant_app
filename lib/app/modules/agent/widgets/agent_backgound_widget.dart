import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/state_provider.dart';

class AgentBackgroundWidget extends ConsumerWidget {
  const AgentBackgroundWidget({
    super.key,
    this.type = AgentBackgroundPlatformType.mobile,
  });

  final AgentBackgroundPlatformType type;
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
        return Opacity(
          opacity: 0.3,
          child: Container(
            padding: getPadding,
            margin: getMargin,
            width: double.infinity,
            decoration: BoxDecoration(
              image: result.background != null
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.1,
                      colorFilter:
                          ColorFilter.mode(Color(colorValue), BlendMode.srcIn),
                      image: NetworkImage(result.background!),
                    )
                  : null,
            ),
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
      case AgentBackgroundPlatformType.mobile:
        return const EdgeInsets.only(top: 100);
      case AgentBackgroundPlatformType.web:
        return EdgeInsets.zero;
      default:
        return EdgeInsets.zero;
    }
  }

  Color get getColor {
    switch (type) {
      case AgentBackgroundPlatformType.mobile:
        return Colors.black54;
      case AgentBackgroundPlatformType.web:
        return Colors.white10;
      default:
        return Colors.white;
    }
  }

  EdgeInsetsGeometry? get getMargin {
    switch (type) {
      case AgentBackgroundPlatformType.mobile:
        return const EdgeInsets.only(bottom: 100);
      case AgentBackgroundPlatformType.web:
        return EdgeInsets.zero;
      default:
        return EdgeInsets.zero;
    }
  }

  LinearGradient? getGradient(int value) {
    switch (type) {
      case AgentBackgroundPlatformType.mobile:
        return LinearGradient(
          colors: [
            Color(value).withOpacity(0.5),
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.0, 1.0],
        );
      case AgentBackgroundPlatformType.web:
        return null;
      default:
        return null;
    }
  }
}

enum AgentBackgroundPlatformType {
  web,
  mobile,
}
