import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';

import '../widgets/agent_abilities_widget.dart';
import '../widgets/agent_name_widget.dart';
import '../widgets/agent_player_widget.dart';

class AgentScreen extends ConsumerWidget {
  const AgentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final agents = ref.watch(agentProvider);
    // final selectedAgentId = ref.watch(selectedAgentIdProvider);
    switch (kIsWeb) {
      case true:
        return const AgentDesktopWidget();
      case false:
        return Scaffold(
          backgroundColor: Colors.black12,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.height,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AgentNameWidget(
                    type: AgentNamePlatformType.mobile,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: AgentAbilitiesWidget(
                    type: AgentAbilitiesPlatformType.mobile,
                  ),
                ),
                const Spacer(),
                const AgentPlayerWidget(
                  type: AgentPlayerPlatformType.mobile,
                ),
              ],
            ),
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

class AgentDesktopWidget extends ConsumerWidget {
  const AgentDesktopWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Row(
        children: [
          Flexible(
            child: SizedBox(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        height: 210,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white38,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 220,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AgentPlayerWidget(
                        type: AgentPlayerPlatformType.web,
                      ),
                      10.width,
                      Flexible(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.white38,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 210,
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: context.screenWidth * 0.03),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                                child: const AgentNameWidget(
                                  type: AgentNamePlatformType.web,
                                ),
                              ),
                              Container(
                                height: 220,
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.screenWidth * 0.03,
                                ),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                                child: const AgentAbilitiesWidget(
                                  type: AgentAbilitiesPlatformType.web,
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: context.screenWidth * 0.03),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '// ROLE',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      16.height,
                                      Text(
                                        'CONTROLLER',
                                        style: TextStyle(
                                          fontSize: context.screenWidth * 0.03,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.screenWidth * 0.03,
                                    vertical: 24,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '// BIORAPHY',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      16.height,
                                      Flexible(
                                        child: Text(
                                          'Gekko ' * 40,
                                          maxLines: 5,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white38,
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(child: Container())
        ],
      ),
    );
  }
}
