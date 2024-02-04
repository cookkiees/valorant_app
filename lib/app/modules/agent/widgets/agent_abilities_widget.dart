import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/state_provider.dart';

class AgentAbilitiesWidget extends ConsumerWidget {
  const AgentAbilitiesWidget({
    super.key,
    this.type = AgentAbilitiesPlatformType.mobile,
  });

  final AgentAbilitiesPlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentProvider);
    final selectedAgentId = ref.watch(selectedAgentIdProvider);
    return agents.when(
      data: (models) {
        var result = models.data[selectedAgentId];

        return SizedBox(
          height: getHeight,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var abilities = result.abilities?[index];
              int colorValue = int.tryParse(
                      '0x${result.backgroundGradientColors?[index] ?? 'FFFFFF'}') ??
                  0xFF0000;
              return Container(
                height: getHeight,
                width: getWidth,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(colorValue).withOpacity(0.12),
                  image: abilities?.displayIcon != null
                      ? DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(abilities!.displayIcon!),
                        )
                      : null,
                  border: Border.all(
                    color: Colors.white38,
                  ),
                ),
              );
            },
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

  double get getHeight {
    switch (type) {
      case AgentAbilitiesPlatformType.mobile:
        return 40;
      case AgentAbilitiesPlatformType.web:
        return 100;
      default:
        return 40;
    }
  }

  double get getWidth {
    switch (type) {
      case AgentAbilitiesPlatformType.mobile:
        return 40;
      case AgentAbilitiesPlatformType.web:
        return 60;
      default:
        return 40;
    }
  }
}

enum AgentAbilitiesPlatformType {
  web,
  mobile,
}
