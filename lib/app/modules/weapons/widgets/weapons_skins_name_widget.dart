import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/providers/state/state_provider.dart';
import '../../../core/providers/weapons/weapons_provider.dart';

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
            child: Container(
              color: type == WeaponsSkinsNamePlatformType.mobile
                  ? null
                  : Colors.white,
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
          Container(
            color: type == WeaponsSkinsNamePlatformType.mobile
                ? null
                : Colors.white,
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
          fontSize: 15,
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
