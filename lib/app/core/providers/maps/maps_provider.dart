import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:valorant_app/app/core/models/maps/maps_base_models.dart';

import '../../services/maps/maps_service.dart';

part 'maps_provider.g.dart';

@riverpod
MapsService mapsService(MapsServiceRef ref) {
  return MapsService();
}

@riverpod
Future<MapsBaseModels> maps(MapsRef ref) {
  return ref.read(mapsServiceProvider).fetchMaps();
}
