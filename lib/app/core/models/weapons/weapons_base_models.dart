import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapons_base_models.freezed.dart';
part 'weapons_base_models.g.dart';

@freezed
class WeaponsBaseModels with _$WeaponsBaseModels {
  const factory WeaponsBaseModels({
    int? status,
    List<Data>? data,
  }) = _WeaponsBaseModels;

  factory WeaponsBaseModels.fromJson(Map<String, dynamic> json) =>
      _$WeaponsBaseModelsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? uuid,
    String? displayName,
    String? category,
    String? defaultSkinUuid,
    String? displayIcon,
    String? killStreamIcon,
    String? assetPath,
    WeaponStats? weaponStats,
    ShopData? shopData,
    List<Skins>? skins,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class WeaponStats with _$WeaponStats {
  const factory WeaponStats({
    double? fireRate,
    int? magazineSize,
    double? runSpeedMultiplier,
    double? equipTimeSeconds,
    double? reloadTimeSeconds,
    double? firstBulletAccuracy,
    int? shotgunPelletCount,
    String? wallPenetration,
    String? feature,
    String? fireMode,
    String? altFireType,
    AdsStats? adsStats,
    AltShotgunStats? altShotgunStats,
    AirBurstStats? airBurstStats,
    List<DamageRanges>? damageRanges,
  }) = _WeaponStats;

  factory WeaponStats.fromJson(Map<String, dynamic> json) =>
      _$WeaponStatsFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class AdsStats with _$AdsStats {
  const factory AdsStats({
    double? zoomMultiplier,
    double? fireRate,
    double? runSpeedMultiplier,
    int? burstCount,
    double? firstBulletAccuracy,
  }) = _AdsStats;

  factory AdsStats.fromJson(Map<String, dynamic> json) =>
      _$AdsStatsFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class AltShotgunStats with _$AltShotgunStats {
  const factory AltShotgunStats({
    int? shotgunPelletCount,
    double? burstRate,
  }) = _AltShotgunStats;

  factory AltShotgunStats.fromJson(Map<String, dynamic> json) =>
      _$AltShotgunStatsFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class AirBurstStats with _$AirBurstStats {
  const factory AirBurstStats({
    int? shotgunPelletCount,
    double? burstDistance,
  }) = _AirBurstStats;

  factory AirBurstStats.fromJson(Map<String, dynamic> json) =>
      _$AirBurstStatsFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class DamageRanges with _$DamageRanges {
  const factory DamageRanges({
    int? rangeStartMeters,
    int? rangeEndMeters,
    double? headDamage,
    int? bodyDamage,
    double? legDamage,
  }) = _DamageRanges;

  factory DamageRanges.fromJson(Map<String, dynamic> json) =>
      _$DamageRangesFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class ShopData with _$ShopData {
  const factory ShopData({
    int? cost,
    String? category,
    int? shopOrderPriority,
    String? categoryText,
    GridPosition? gridPosition,
    bool? canBeTrashed,
    String? image,
    String? newImage,
    String? newImage2,
    String? assetPath,
  }) = _ShopData;

  factory ShopData.fromJson(Map<String, dynamic> json) =>
      _$ShopDataFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class GridPosition with _$GridPosition {
  const factory GridPosition({
    int? row,
    int? column,
  }) = _GridPosition;

  factory GridPosition.fromJson(Map<String, dynamic> json) =>
      _$GridPositionFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class Skins with _$Skins {
  const factory Skins({
    String? uuid,
    String? displayName,
    String? themeUuid,
    String? contentTierUuid,
    String? displayIcon,
    String? wallpaper,
    String? assetPath,
    List<Chromas>? chromas,
    List<Levels>? levels,
  }) = _Skins;

  factory Skins.fromJson(Map<String, dynamic> json) => _$SkinsFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class Chromas with _$Chromas {
  const factory Chromas({
    String? uuid,
    String? displayName,
    String? displayIcon,
    String? fullRender,
    String? swatch,
    String? streamedVideo,
    String? assetPath,
  }) = _Chromas;

  factory Chromas.fromJson(Map<String, dynamic> json) =>
      _$ChromasFromJson(json);
}

// ... (similarly, annotate other classes with @freezed)

@freezed
class Levels with _$Levels {
  const factory Levels({
    String? uuid,
    String? displayName,
    String? levelItem,
    String? displayIcon,
    String? streamedVideo,
    String? assetPath,
  }) = _Levels;

  factory Levels.fromJson(Map<String, dynamic> json) => _$LevelsFromJson(json);
}
