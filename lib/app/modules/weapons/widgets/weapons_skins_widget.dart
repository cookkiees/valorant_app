import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/state/state_provider.dart';
import '../../../core/providers/weapons/weapons_provider.dart';

class WeaponsSkinsWidget extends ConsumerWidget {
  const WeaponsSkinsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
    final carouselController = ref.read(carouselControllerProvider);

    return weapons.when(
      data: (models) {
        return CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: models.data?[selectedWeaponsId].skins?.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            var skins = models.data?[selectedWeaponsId].skins?[index];

            return Transform.rotate(
              angle: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 1,
                    fit: BoxFit.contain,
                    image: NetworkImage('${skins?.displayIcon}'),
                  ),
                ),
              ),
            );
          },
          options: CarouselOptions(
            scrollPhysics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            enlargeCenterPage: true,
            autoPlay: false, // Set to true if you want auto-play
            aspectRatio: 1,
            viewportFraction: 0.8,
          ),
        );
      },
      error: (error, stackTrace) {
        return const Text("text");
      },
      loading: () {
        return const CircularProgressIndicator.adaptive();
      },
    );
  }

  // Remaining code is unchanged

  // ... Rest of the code (getHeight, getWidth, getMargin, getPadding, getScroolDirection) ...
}
