import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant_app/app/common/extensions/app_size_extension.dart';
import 'package:valorant_app/app/core/providers/weapons/weapons_provider.dart';

import '../../../core/providers/state/state_provider.dart';

class WeaponsStatsWidget extends ConsumerWidget {
  const WeaponsStatsWidget(
      {super.key, this.type = WeaponsStatsPlatformType.mobile});

  final WeaponsStatsPlatformType type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
    return weapons.when(
      data: (models) {
        var stats = models.data?[selectedWeaponsId].weaponStats;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildRichText(
              context,
              label: "Fire rate",
              value: "${stats?.fireRate ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Magazine size",
              value: "${stats?.magazineSize ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Run speed multiplier",
              value: "${stats?.runSpeedMultiplier ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Equip time seconds",
              value: "${stats?.equipTimeSeconds ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Reload time seconds",
              value: "${stats?.reloadTimeSeconds ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "First bullet accuracy",
              value: "${stats?.firstBulletAccuracy ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Shotgun pellet count",
              value: "${stats?.shotgunPelletCount ?? '-'}",
            ),
            6.height,
            buildRichText(
              context,
              label: "Wall penetration",
              value: extractCategory(stats?.wallPenetration ?? '-'),
            ),
            6.height,
            buildRichText(
              context,
              label: "Feature",
              value: extractCategory(stats?.feature ?? '-'),
            ),
            6.height,
            buildRichText(
              context,
              label: "Fire mode",
              value: extractCategory(stats?.fireMode ?? '-'),
            ),
            6.height,
            if (stats?.altFireType != null)
              buildRichText(
                context,
                label: "ALT fire type",
                value: extractCategory(stats?.altFireType ?? '-'),
              ),
            6.height,
            if (stats?.airBurstStats != null)
              buildRichText(
                context,
                label: "Air burst stats",
                value: extractCategory(stats?.airBurstStats?.toString() ?? '-'),
              ),
            6.height,
            if (stats?.altShotgunStats != null)
              buildRichText(
                context,
                label: "ALT shotgun stats",
                value: extractCategory(
                  stats?.altShotgunStats?.toString() ?? '-',
                ),
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
      case WeaponsStatsPlatformType.mobile:
        return GoogleFonts.zillaSlab(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        );
      case WeaponsStatsPlatformType.web:
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

enum WeaponsStatsPlatformType {
  web,
  mobile,
}
