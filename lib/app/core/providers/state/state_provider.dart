import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedAgentIdProvider = StateProvider((ref) => 0);
final selectedWeaponsIdProvider = StateProvider((ref) => 0);
final selectedSkinsIdProvider = StateProvider((ref) => 0);
final currentIndexMapsProvider = StateProvider<int>((ref) => 0);
final carouselControllerProvider = Provider<CarouselController>((ref) {
  return CarouselController();
});
