import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'package:valorant_app/app/modules/weapons/widgets/weapons_ads_stats_widget.dart';
import 'package:valorant_app/app/modules/weapons/widgets/weapons_name_widget.dart';
import 'package:video_player/video_player.dart';

import '../../../core/providers/state/state_provider.dart';
import '../../../core/providers/video/video_provider.dart';
import '../../../core/providers/weapons/weapons_provider.dart';
import '../widgets/weapons_category_widget.dart';
import '../widgets/weapons_model_widget.dart';
import '../widgets/weapons_skins_widget.dart';
import '../widgets/weapons_stats_widget.dart';

class WeaponsScreen extends ConsumerWidget {
  const WeaponsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kIsWeb) {
      return const WeaponsDesktopWidget();
    } else {
      return const SizedBox.shrink();
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

class WeaponsStreamVideoWidget extends ConsumerStatefulWidget {
  const WeaponsStreamVideoWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<WeaponsStreamVideoWidget> createState() =>
      _WeaponsStreamVideoWidgetState();
}

class _WeaponsStreamVideoWidgetState
    extends ConsumerState<WeaponsStreamVideoWidget>
    with TickerProviderStateMixin {
  bool isPlay = false;
  @override
  Widget build(BuildContext context) {
    final videoController = ref.watch(videoControllerProvider);
    final videoTimeStream = ref.watch(videoTimeProvider);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 300,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: kToolbarHeight),
          decoration: const BoxDecoration(),
          child: videoController.value.isInitialized
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: videoController.value.aspectRatio,
                    child: Stack(
                      children: [
                        VideoPlayer(videoController),
                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: Builder(
                            builder: (context) {
                              final formattedTime =
                                  videoTimeStream.asData?.value ?? '00:00';
                              return Text(
                                formattedTime,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const Center(child: CircularProgressIndicator()),
        ),
        Positioned(
          bottom: 8,
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {
                if (videoController.value.isPlaying) {
                  videoController.pause();
                } else {
                  videoController.play();
                }
                setState(() {
                  isPlay = !isPlay;
                });
              },
              icon: Icon(
                isPlay ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WeaponsSkinsNameWidget extends ConsumerWidget {
  const WeaponsSkinsNameWidget(
      {super.key, this.type = WeaponsSkinsNamePlatformType.mobile});

  final WeaponsSkinsNamePlatformType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
    final selectedskinsId = ref.watch(selectedSkinsIdProvider);
    final carouselController = ref.read(carouselControllerProvider);

    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RotatedBox(
            quarterTurns: 2,
            child: ColoredBox(
              color: Colors.white,
              child: IconButton(
                onPressed: () {
                  carouselController.previousPage();
                  ref.watch(selectedSkinsIdProvider.notifier).state--;
                },
                icon: const Icon(
                  Icons.double_arrow,
                  size: 32,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          weapons.when(
            data: (models) {
              String displayName = models.data?[selectedWeaponsId]
                      .skins?[selectedskinsId].displayName ??
                  '';

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
          ),
          ColoredBox(
            color: Colors.white,
            child: IconButton(
              onPressed: () {
                carouselController.nextPage();
                ref.watch(selectedSkinsIdProvider.notifier).state++;
              },
              icon: const Icon(
                Icons.double_arrow,
                size: 32,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle getTextStyle(BuildContext context) {
    switch (type) {
      case WeaponsSkinsNamePlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
      case WeaponsSkinsNamePlatformType.web:
        return const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
      default:
        return const TextStyle();
    }
  }
}

enum WeaponsSkinsNamePlatformType {
  web,
  mobile,
}
