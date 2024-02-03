import 'package:freezed_annotation/freezed_annotation.dart';

part 'maps_base_models.freezed.dart';
part 'maps_base_models.g.dart';

@freezed
class MapsBaseModels with _$MapsBaseModels {
  factory MapsBaseModels({
    int? status,
    List<Data>? data,
  }) = _MapsBaseModels;

  factory MapsBaseModels.fromJson(Map<String, dynamic> json) =>
      _$MapsBaseModelsFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    String? uuid,
    String? displayName,
    String? narrativeDescription,
    String? tacticalDescription,
    String? coordinates,
    String? displayIcon,
    String? listViewIcon,
    String? listViewIconTall,
    String? splash,
    String? stylizedBackgroundImage,
    String? premierBackgroundImage,
    String? assetPath,
    String? mapUrl,
    double? xMultiplier,
    double? yMultiplier,
    double? xScalarToAdd,
    double? yScalarToAdd,
    List<Callouts>? callouts,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Callouts with _$Callouts {
  factory Callouts({
    String? regionName,
    String? superRegionName,
    Location? location,
  }) = _Callouts;

  factory Callouts.fromJson(Map<String, dynamic> json) =>
      _$CalloutsFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location({
    double? x,
    double? y,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
