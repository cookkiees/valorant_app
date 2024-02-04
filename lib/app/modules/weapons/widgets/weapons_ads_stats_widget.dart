import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'package:valorant_app/app/core/providers/weapons/weapons_provider.dart';

import '../../../core/providers/state/state_provider.dart';

class WeaponsAdsStatsWidget extends ConsumerWidget {
  const WeaponsAdsStatsWidget(
      {super.key, this.type = WeaponsAdsStatsPlatformType.mobile});

  final WeaponsAdsStatsPlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
    return weapons.when(
      data: (models) {
        var adsStats = models.data?[selectedWeaponsId].weaponStats?.adsStats;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildRichText(
              context,
              label: "Zoom multiplier",
              value: "${adsStats?.zoomMultiplier ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Fire rate",
              value: "${adsStats?.fireRate ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Run speed multiplier",
              value: "${adsStats?.runSpeedMultiplier ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Burst count",
              value: "${adsStats?.burstCount ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "First bullet accuracy",
              value: "${adsStats?.firstBulletAccuracy ?? '-'}",
            ),
          ],
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

  Widget buildRichText(BuildContext context, {String? label, String? value}) {
    return RichText(
      text: TextSpan(
        style: getTextStyle(context),
        children: [
          TextSpan(
            text: "$label  ",
          ),
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  TextStyle getTextStyle(BuildContext context) {
    switch (type) {
      case WeaponsAdsStatsPlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case WeaponsAdsStatsPlatformType.web:
        return const TextStyle(
          fontSize: 14,
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

enum WeaponsAdsStatsPlatformType {
  web,
  mobile,
}
