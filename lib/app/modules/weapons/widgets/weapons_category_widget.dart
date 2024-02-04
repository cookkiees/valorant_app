import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/core/providers/weapons/weapons_provider.dart';

import '../../../core/providers/state/state_provider.dart';

class WeaponsCategoryWidget extends ConsumerWidget {
  const WeaponsCategoryWidget(
      {super.key, this.type = WeaponsCategoryPlatformType.mobile});

  final WeaponsCategoryPlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
    return weapons.when(
      data: (models) {
        String displayName = models.data?[selectedWeaponsId].category ?? '';

        return Text(
          extractCategory(displayName).toUpperCase(),
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
      case WeaponsCategoryPlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case WeaponsCategoryPlatformType.web:
        return const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white54,
        );
      default:
        return const TextStyle();
    }
  }
}

String extractCategory(String categoryString) {
  // Split the category string using "::" as the separator
  List<String> parts = categoryString.split("::");

  // Extract the last part of the split string
  String extractedCategory = parts.isNotEmpty ? parts.last.trim() : "";

  return extractedCategory;
}

enum WeaponsCategoryPlatformType {
  web,
  mobile,
}
