// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_base_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapsBaseModelsImpl _$$MapsBaseModelsImplFromJson(Map<String, dynamic> json) =>
    _$MapsBaseModelsImpl(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MapsBaseModelsImplToJson(
        _$MapsBaseModelsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      narrativeDescription: json['narrativeDescription'] as String?,
      tacticalDescription: json['tacticalDescription'] as String?,
      coordinates: json['coordinates'] as String?,
      displayIcon: json['displayIcon'] as String?,
      listViewIcon: json['listViewIcon'] as String?,
      listViewIconTall: json['listViewIconTall'] as String?,
      splash: json['splash'] as String?,
      stylizedBackgroundImage: json['stylizedBackgroundImage'] as String?,
      premierBackgroundImage: json['premierBackgroundImage'] as String?,
      assetPath: json['assetPath'] as String?,
      mapUrl: json['mapUrl'] as String?,
      xMultiplier: (json['xMultiplier'] as num?)?.toDouble(),
      yMultiplier: (json['yMultiplier'] as num?)?.toDouble(),
      xScalarToAdd: (json['xScalarToAdd'] as num?)?.toDouble(),
      yScalarToAdd: (json['yScalarToAdd'] as num?)?.toDouble(),
      callouts: (json['callouts'] as List<dynamic>?)
          ?.map((e) => Callouts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'narrativeDescription': instance.narrativeDescription,
      'tacticalDescription': instance.tacticalDescription,
      'coordinates': instance.coordinates,
      'displayIcon': instance.displayIcon,
      'listViewIcon': instance.listViewIcon,
      'listViewIconTall': instance.listViewIconTall,
      'splash': instance.splash,
      'stylizedBackgroundImage': instance.stylizedBackgroundImage,
      'premierBackgroundImage': instance.premierBackgroundImage,
      'assetPath': instance.assetPath,
      'mapUrl': instance.mapUrl,
      'xMultiplier': instance.xMultiplier,
      'yMultiplier': instance.yMultiplier,
      'xScalarToAdd': instance.xScalarToAdd,
      'yScalarToAdd': instance.yScalarToAdd,
      'callouts': instance.callouts,
    };

_$CalloutsImpl _$$CalloutsImplFromJson(Map<String, dynamic> json) =>
    _$CalloutsImpl(
      regionName: json['regionName'] as String?,
      superRegionName: json['superRegionName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CalloutsImplToJson(_$CalloutsImpl instance) =>
    <String, dynamic>{
      'regionName': instance.regionName,
      'superRegionName': instance.superRegionName,
      'location': instance.location,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
