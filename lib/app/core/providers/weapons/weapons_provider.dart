import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:valorant_app/app/core/models/weapons/weapons_base_models.dart';

import '../../services/weapons/weapons_service.dart';

part 'weapons_provider.g.dart'; // Add this line

@riverpod
WeaponsService weaponsService(WeaponsServiceRef ref) {
  return WeaponsService();
}

@riverpod
Future<WeaponsBaseModels> weapons(WeaponsRef ref) {
  return ref.read(weaponsServiceProvider).fetchWeapons();
}
