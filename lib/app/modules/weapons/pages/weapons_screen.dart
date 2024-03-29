import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'package:valorant_app/app/modules/weapons/widgets/weapons_ads_stats_widget.dart';
import 'package:valorant_app/app/modules/weapons/widgets/weapons_name_widget.dart';

import '../widgets/weapons_category_widget.dart';
import '../widgets/weapons_model_widget.dart';
import '../widgets/weapons_skins_name_widget.dart';
import '../widgets/weapons_skins_widget.dart';
import '../widgets/weapons_stats_widget.dart';
import '../widgets/weapons_stream_video_widget.dart';

class WeaponsScreen extends ConsumerWidget {
  const WeaponsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kIsWeb) {
      return const WeaponsDesktopWidget();
    } else {
      return const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            WeaponsSkinsNameWidget(
              type: WeaponsSkinsNamePlatformType.mobile,
            ),
            Spacer(),
            WeaponsSkinsWidget(),
            Padding(
              padding: EdgeInsets.only(bottom: 48),
              child: WeaponsModelWidget(
                type: WeaponsModelPlatformType.mobile,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class WeaponsDesktopWidget extends ConsumerWidget {
  const WeaponsDesktopWidget({super.key});

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
                      const WeaponsModelWidget(
                        type: WeaponsModelPlatformType.web,
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
                                height: 280,
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
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    WeaponsNameWidget(
                                      type: WeaponsNamePlatformType.web,
                                    ),
                                    WeaponsCategoryWidget(
                                      type: WeaponsCategoryPlatformType.web,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 220,
                                width: double.infinity,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'ADS STATS',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    12.height,
                                    const WeaponsAdsStatsWidget(
                                      type: WeaponsAdsStatsPlatformType.web,
                                    ),
                                  ],
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
                                        'WEAPONS STATS',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      16.height,
                                      const WeaponsStatsWidget(
                                        type: WeaponsStatsPlatformType.web,
                                      ),
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
              child: Column(
                children: [
                  WeaponsSkinsNameWidget(
                    type: WeaponsSkinsNamePlatformType.web,
                  ),
                  Flexible(child: WeaponsSkinsWidget()),
                  WeaponsStreamVideoWidget()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
