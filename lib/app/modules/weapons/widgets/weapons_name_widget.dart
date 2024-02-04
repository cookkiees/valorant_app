import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'package:valorant_app/app/core/providers/weapons/weapons_provider.dart';

import '../../../core/providers/state/state_provider.dart';

class WeaponsNameWidget extends ConsumerWidget {
  const WeaponsNameWidget(
      {super.key, this.type = WeaponsNamePlatformType.mobile});

  final WeaponsNamePlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
    return weapons.when(
      data: (models) {
        String displayName = models.data?[selectedWeaponsId].displayName ?? '';

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
      case WeaponsNamePlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case WeaponsNamePlatformType.web:
        return TextStyle(
          fontSize: context.screenWidth * 0.04,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
      default:
        return const TextStyle();
    }
  }
}

enum WeaponsNamePlatformType {
  web,
  mobile,
}
