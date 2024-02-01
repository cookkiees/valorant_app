// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_base_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeaponsBaseModelsImpl _$$WeaponsBaseModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$WeaponsBaseModelsImpl(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeaponsBaseModelsImplToJson(
        _$WeaponsBaseModelsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      category: json['category'] as String?,
      defaultSkinUuid: json['defaultSkinUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      killStreamIcon: json['killStreamIcon'] as String?,
      assetPath: json['assetPath'] as String?,
      weaponStats: json['weaponStats'] == null
          ? null
          : WeaponStats.fromJson(json['weaponStats'] as Map<String, dynamic>),
      shopData: json['shopData'] == null
          ? null
          : ShopData.fromJson(json['shopData'] as Map<String, dynamic>),
      skins: (json['skins'] as List<dynamic>?)
          ?.map((e) => Skins.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'category': instance.category,
      'defaultSkinUuid': instance.defaultSkinUuid,
      'displayIcon': instance.displayIcon,
      'killStreamIcon': instance.killStreamIcon,
      'assetPath': instance.assetPath,
      'weaponStats': instance.weaponStats,
      'shopData': instance.shopData,
      'skins': instance.skins,
    };

_$WeaponStatsImpl _$$WeaponStatsImplFromJson(Map<String, dynamic> json) =>
    _$WeaponStatsImpl(
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      magazineSize: json['magazineSize'] as int?,
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      equipTimeSeconds: (json['equipTimeSeconds'] as num?)?.toDouble(),
      reloadTimeSeconds: (json['reloadTimeSeconds'] as num?)?.toDouble(),
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
      shotgunPelletCount: json['shotgunPelletCount'] as int?,
      wallPenetration: json['wallPenetration'] as String?,
      feature: json['feature'] as String?,
      fireMode: json['fireMode'] as String?,
      altFireType: json['altFireType'] as String?,
      adsStats: json['adsStats'] == null
          ? null
          : AdsStats.fromJson(json['adsStats'] as Map<String, dynamic>),
      altShotgunStats: json['altShotgunStats'] == null
          ? null
          : AltShotgunStats.fromJson(
              json['altShotgunStats'] as Map<String, dynamic>),
      airBurstStats: json['airBurstStats'] == null
          ? null
          : AirBurstStats.fromJson(
              json['airBurstStats'] as Map<String, dynamic>),
      damageRanges: (json['damageRanges'] as List<dynamic>?)
          ?.map((e) => DamageRanges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeaponStatsImplToJson(_$WeaponStatsImpl instance) =>
    <String, dynamic>{
      'fireRate': instance.fireRate,
      'magazineSize': instance.magazineSize,
      'runSpeedMultiplier': instance.runSpeedMultiplier,
      'equipTimeSeconds': instance.equipTimeSeconds,
      'reloadTimeSeconds': instance.reloadTimeSeconds,
      'firstBulletAccuracy': instance.firstBulletAccuracy,
      'shotgunPelletCount': instance.shotgunPelletCount,
      'wallPenetration': instance.wallPenetration,
      'feature': instance.feature,
      'fireMode': instance.fireMode,
      'altFireType': instance.altFireType,
      'adsStats': instance.adsStats,
      'altShotgunStats': instance.altShotgunStats,
      'airBurstStats': instance.airBurstStats,
      'damageRanges': instance.damageRanges,
    };

_$AdsStatsImpl _$$AdsStatsImplFromJson(Map<String, dynamic> json) =>
    _$AdsStatsImpl(
      zoomMultiplier: (json['zoomMultiplier'] as num?)?.toDouble(),
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      burstCount: json['burstCount'] as int?,
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AdsStatsImplToJson(_$AdsStatsImpl instance) =>
    <String, dynamic>{
      'zoomMultiplier': instance.zoomMultiplier,
      'fireRate': instance.fireRate,
      'runSpeedMultiplier': instance.runSpeedMultiplier,
      'burstCount': instance.burstCount,
      'firstBulletAccuracy': instance.firstBulletAccuracy,
    };

_$AltShotgunStatsImpl _$$AltShotgunStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$AltShotgunStatsImpl(
      shotgunPelletCount: json['shotgunPelletCount'] as int?,
      burstRate: (json['burstRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AltShotgunStatsImplToJson(
        _$AltShotgunStatsImpl instance) =>
    <String, dynamic>{
      'shotgunPelletCount': instance.shotgunPelletCount,
      'burstRate': instance.burstRate,
    };

_$AirBurstStatsImpl _$$AirBurstStatsImplFromJson(Map<String, dynamic> json) =>
    _$AirBurstStatsImpl(
      shotgunPelletCount: json['shotgunPelletCount'] as int?,
      burstDistance: (json['burstDistance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AirBurstStatsImplToJson(_$AirBurstStatsImpl instance) =>
    <String, dynamic>{
      'shotgunPelletCount': instance.shotgunPelletCount,
      'burstDistance': instance.burstDistance,
    };

_$DamageRangesImpl _$$DamageRangesImplFromJson(Map<String, dynamic> json) =>
    _$DamageRangesImpl(
      rangeStartMeters: json['rangeStartMeters'] as int?,
      rangeEndMeters: json['rangeEndMeters'] as int?,
      headDamage: (json['headDamage'] as num?)?.toDouble(),
      bodyDamage: json['bodyDamage'] as int?,
      legDamage: (json['legDamage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DamageRangesImplToJson(_$DamageRangesImpl instance) =>
    <String, dynamic>{
      'rangeStartMeters': instance.rangeStartMeters,
      'rangeEndMeters': instance.rangeEndMeters,
      'headDamage': instance.headDamage,
      'bodyDamage': instance.bodyDamage,
      'legDamage': instance.legDamage,
    };

_$ShopDataImpl _$$ShopDataImplFromJson(Map<String, dynamic> json) =>
    _$ShopDataImpl(
      cost: json['cost'] as int?,
      category: json['category'] as String?,
      shopOrderPriority: json['shopOrderPriority'] as int?,
      categoryText: json['categoryText'] as String?,
      gridPosition: json['gridPosition'] == null
          ? null
          : GridPosition.fromJson(json['gridPosition'] as Map<String, dynamic>),
      canBeTrashed: json['canBeTrashed'] as bool?,
      image: json['image'] as String?,
      newImage: json['newImage'] as String?,
      newImage2: json['newImage2'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$ShopDataImplToJson(_$ShopDataImpl instance) =>
    <String, dynamic>{
      'cost': instance.cost,
      'category': instance.category,
      'shopOrderPriority': instance.shopOrderPriority,
      'categoryText': instance.categoryText,
      'gridPosition': instance.gridPosition,
      'canBeTrashed': instance.canBeTrashed,
      'image': instance.image,
      'newImage': instance.newImage,
      'newImage2': instance.newImage2,
      'assetPath': instance.assetPath,
    };

_$GridPositionImpl _$$GridPositionImplFromJson(Map<String, dynamic> json) =>
    _$GridPositionImpl(
      row: json['row'] as int?,
      column: json['column'] as int?,
    );

Map<String, dynamic> _$$GridPositionImplToJson(_$GridPositionImpl instance) =>
    <String, dynamic>{
      'row': instance.row,
      'column': instance.column,
    };

_$SkinsImpl _$$SkinsImplFromJson(Map<String, dynamic> json) => _$SkinsImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      themeUuid: json['themeUuid'] as String?,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      wallpaper: json['wallpaper'] as String?,
      assetPath: json['assetPath'] as String?,
      chromas: (json['chromas'] as List<dynamic>?)
          ?.map((e) => Chromas.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => Levels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SkinsImplToJson(_$SkinsImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'themeUuid': instance.themeUuid,
      'contentTierUuid': instance.contentTierUuid,
      'displayIcon': instance.displayIcon,
      'wallpaper': instance.wallpaper,
      'assetPath': instance.assetPath,
      'chromas': instance.chromas,
      'levels': instance.levels,
    };

_$ChromasImpl _$$ChromasImplFromJson(Map<String, dynamic> json) =>
    _$ChromasImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String?,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$ChromasImplToJson(_$ChromasImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'fullRender': instance.fullRender,
      'swatch': instance.swatch,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
    };

_$LevelsImpl _$$LevelsImplFromJson(Map<String, dynamic> json) => _$LevelsImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      levelItem: json['levelItem'] as String?,
      displayIcon: json['displayIcon'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$LevelsImplToJson(_$LevelsImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'levelItem': instance.levelItem,
      'displayIcon': instance.displayIcon,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
    };
