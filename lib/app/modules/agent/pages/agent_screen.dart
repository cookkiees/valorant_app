import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'package:valorant_app/app/core/providers/maps/maps_provider.dart';
import 'package:valorant_app/app/modules/agent/widgets/agent_backgound_widget.dart';

import '../widgets/agent_abilities_widget.dart';
import '../widgets/agent_biography_widget.dart';
import '../widgets/agent_full_potrait_widget.dart';
import '../widgets/agent_name_widget.dart';
import '../widgets/agent_player_widget.dart';
import '../widgets/agent_role_name_widget.dart';

class AgentScreen extends ConsumerWidget {
  const AgentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (kIsWeb) {
      case true:
        return const AgentDesktopWidget();
      case false:
        return const Scaffold(
          backgroundColor: Colors.black12,
          body: SafeArea(
            top: false,
            bottom: false,
            child: Stack(
              children: [
                AgentBackgroundWidget(),
                AgentFullPotraitWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AgentPlayerWidget(
                      type: AgentPlayerPlatformType.mobile,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 14),
                      child: AgentNameWidget(
                        type: AgentNamePlatformType.mobile,
                      ),
                    ),
                  ],
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
                                      const AgentRoleNameWidget(
                                        type: AgentRoleNamePlatformType.web,
                                      ),
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
                                      const AgentBiographyWidget(
                                        type: AgentBiographyPlatformType.web,
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
          const Flexible(
              child: SizedBox(
            child: Stack(
              children: [
                AgentBackgroundWidget(
                  type: AgentBackgroundPlatformType.web,
                ),
                AgentFullPotraitWidget(
                  type: AgentFullPotraitPlatformType.web,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
