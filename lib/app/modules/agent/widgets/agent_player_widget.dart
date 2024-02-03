import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/agent/agent_provider.dart';
import '../../../core/providers/state/selected_agent_id_provider.dart';

class AgentPlayerWidget extends ConsumerWidget {
  const AgentPlayerWidget({
    super.key,
    this.type = AgentPlayerPlatformType.mobile,
  });

  final AgentPlayerPlatformType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentProvider);
    final selectedAgentId = ref.watch(selectedAgentIdProvider);

    return Container(
      height: type == AgentPlayerPlatformType.mobile ? getHeight : null,
      width: type == AgentPlayerPlatformType.web ? getWidth : null,
      margin: getMargin,
      child: agents.when(
        data: (models) {
          return ListView.builder(
            itemCount: models.data.length,
            scrollDirection: getScroolDirection,
            itemBuilder: (context, index) {
              var result = models.data[index];
              int colorValue = int.tryParse(
                      '0x${result.backgroundGradientColors?[0] ?? 'FF0000'}') ??
                  0xFF0000;

              return Padding(
                padding: models.data.length == index + 1
                    ? EdgeInsets.zero
                    : getPadding,
                child: InkWell(
                  onTap: () {
                    ref.watch(selectedAgentIdProvider.notifier).state = index;
                  },
                  child: Container(
                    width: getWidth,
                    height: getHeight,
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedAgentId == index
                            ? Color(colorValue)
                            : Colors.white38,
                      ),
                    ),
                    child: Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedAgentId == index
                              ? Color(colorValue)
                              : Colors.white38,
                        ),
                        gradient: selectedAgentId == index
                            ? LinearGradient(
                                colors: [
                                  Color(colorValue),
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                stops: const [0.0, 1.0],
                              )
                            : null,
                        image: DecorationImage(
                          opacity: 1,
                          fit: BoxFit.cover,
                          colorFilter: selectedAgentId == index
                              ? null
                              : const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.color,
                                ),
                          image: NetworkImage('${result.displayIcon}'),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return const Text("text");
        },
        loading: () {
          return const CircularProgressIndicator.adaptive();
        },
      ),
    );
  }

  double get getHeight {
    switch (type) {
      case AgentPlayerPlatformType.mobile:
        return 70;
      case AgentPlayerPlatformType.web:
        return 200;
      default:
        return 70;
    }
  }

  double get getWidth {
    switch (type) {
      case AgentPlayerPlatformType.mobile:
        return 100;
      case AgentPlayerPlatformType.web:
        return 200;
      default:
        return 70;
    }
  }

  EdgeInsetsGeometry get getMargin {
    switch (type) {
      case AgentPlayerPlatformType.mobile:
        return const EdgeInsets.only(bottom: kBottomNavigationBarHeight + 20);
      case AgentPlayerPlatformType.web:
        return const EdgeInsets.only(left: 16, top: 60);
      default:
        return EdgeInsets.zero;
    }
  }

  EdgeInsetsGeometry get getPadding {
    switch (type) {
      case AgentPlayerPlatformType.mobile:
        return const EdgeInsets.only(right: 16);
      case AgentPlayerPlatformType.web:
        return const EdgeInsets.only(bottom: 20);
      default:
        return EdgeInsets.zero;
    }
  }

  Axis get getScroolDirection {
    switch (type) {
      case AgentPlayerPlatformType.mobile:
        return Axis.horizontal;
      case AgentPlayerPlatformType.web:
        return Axis.vertical;
      default:
        return Axis.horizontal;
    }
  }
}

enum AgentPlayerPlatformType {
  web,
  mobile,
}
