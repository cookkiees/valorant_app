// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weapons_base_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeaponsBaseModels _$WeaponsBaseModelsFromJson(Map<String, dynamic> json) {
  return _WeaponsBaseModels.fromJson(json);
}

/// @nodoc
mixin _$WeaponsBaseModels {
  int? get status => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponsBaseModelsCopyWith<WeaponsBaseModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponsBaseModelsCopyWith<$Res> {
  factory $WeaponsBaseModelsCopyWith(
          WeaponsBaseModels value, $Res Function(WeaponsBaseModels) then) =
      _$WeaponsBaseModelsCopyWithImpl<$Res, WeaponsBaseModels>;
  @useResult
  $Res call({int? status, List<Data>? data});
}

/// @nodoc
class _$WeaponsBaseModelsCopyWithImpl<$Res, $Val extends WeaponsBaseModels>
    implements $WeaponsBaseModelsCopyWith<$Res> {
  _$WeaponsBaseModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeaponsBaseModelsImplCopyWith<$Res>
    implements $WeaponsBaseModelsCopyWith<$Res> {
  factory _$$WeaponsBaseModelsImplCopyWith(_$WeaponsBaseModelsImpl value,
          $Res Function(_$WeaponsBaseModelsImpl) then) =
      __$$WeaponsBaseModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, List<Data>? data});
}

/// @nodoc
class __$$WeaponsBaseModelsImplCopyWithImpl<$Res>
    extends _$WeaponsBaseModelsCopyWithImpl<$Res, _$WeaponsBaseModelsImpl>
    implements _$$WeaponsBaseModelsImplCopyWith<$Res> {
  __$$WeaponsBaseModelsImplCopyWithImpl(_$WeaponsBaseModelsImpl _value,
      $Res Function(_$WeaponsBaseModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WeaponsBaseModelsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeaponsBaseModelsImpl implements _WeaponsBaseModels {
  const _$WeaponsBaseModelsImpl({this.status, final List<Data>? data})
      : _data = data;

  factory _$WeaponsBaseModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeaponsBaseModelsImplFromJson(json);

  @override
  final int? status;
  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeaponsBaseModels(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeaponsBaseModelsImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeaponsBaseModelsImplCopyWith<_$WeaponsBaseModelsImpl> get copyWith =>
      __$$WeaponsBaseModelsImplCopyWithImpl<_$WeaponsBaseModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeaponsBaseModelsImplToJson(
      this,
    );
  }
}

abstract class _WeaponsBaseModels implements WeaponsBaseModels {
  const factory _WeaponsBaseModels(
      {final int? status, final List<Data>? data}) = _$WeaponsBaseModelsImpl;

  factory _WeaponsBaseModels.fromJson(Map<String, dynamic> json) =
      _$WeaponsBaseModelsImpl.fromJson;

  @override
  int? get status;
  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$WeaponsBaseModelsImplCopyWith<_$WeaponsBaseModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get defaultSkinUuid => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get killStreamIcon => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;
  WeaponStats? get weaponStats => throw _privateConstructorUsedError;
  ShopData? get shopData => throw _privateConstructorUsedError;
  List<Skins>? get skins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? category,
      String? defaultSkinUuid,
      String? displayIcon,
      String? killStreamIcon,
      String? assetPath,
      WeaponStats? weaponStats,
      ShopData? shopData,
      List<Skins>? skins});

  $WeaponStatsCopyWith<$Res>? get weaponStats;
  $ShopDataCopyWith<$Res>? get shopData;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? category = freezed,
    Object? defaultSkinUuid = freezed,
    Object? displayIcon = freezed,
    Object? killStreamIcon = freezed,
    Object? assetPath = freezed,
    Object? weaponStats = freezed,
    Object? shopData = freezed,
    Object? skins = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultSkinUuid: freezed == defaultSkinUuid
          ? _value.defaultSkinUuid
          : defaultSkinUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      killStreamIcon: freezed == killStreamIcon
          ? _value.killStreamIcon
          : killStreamIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      weaponStats: freezed == weaponStats
          ? _value.weaponStats
          : weaponStats // ignore: cast_nullable_to_non_nullable
              as WeaponStats?,
      shopData: freezed == shopData
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as ShopData?,
      skins: freezed == skins
          ? _value.skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<Skins>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeaponStatsCopyWith<$Res>? get weaponStats {
    if (_value.weaponStats == null) {
      return null;
    }

    return $WeaponStatsCopyWith<$Res>(_value.weaponStats!, (value) {
      return _then(_value.copyWith(weaponStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopDataCopyWith<$Res>? get shopData {
    if (_value.shopData == null) {
      return null;
    }

    return $ShopDataCopyWith<$Res>(_value.shopData!, (value) {
      return _then(_value.copyWith(shopData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? category,
      String? defaultSkinUuid,
      String? displayIcon,
      String? killStreamIcon,
      String? assetPath,
      WeaponStats? weaponStats,
      ShopData? shopData,
      List<Skins>? skins});

  @override
  $WeaponStatsCopyWith<$Res>? get weaponStats;
  @override
  $ShopDataCopyWith<$Res>? get shopData;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? category = freezed,
    Object? defaultSkinUuid = freezed,
    Object? displayIcon = freezed,
    Object? killStreamIcon = freezed,
    Object? assetPath = freezed,
    Object? weaponStats = freezed,
    Object? shopData = freezed,
    Object? skins = freezed,
  }) {
    return _then(_$DataImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultSkinUuid: freezed == defaultSkinUuid
          ? _value.defaultSkinUuid
          : defaultSkinUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      killStreamIcon: freezed == killStreamIcon
          ? _value.killStreamIcon
          : killStreamIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      weaponStats: freezed == weaponStats
          ? _value.weaponStats
          : weaponStats // ignore: cast_nullable_to_non_nullable
              as WeaponStats?,
      shopData: freezed == shopData
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as ShopData?,
      skins: freezed == skins
          ? _value._skins
          : skins // ignore: cast_nullable_to_non_nullable
              as List<Skins>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.uuid,
      this.displayName,
      this.category,
      this.defaultSkinUuid,
      this.displayIcon,
      this.killStreamIcon,
      this.assetPath,
      this.weaponStats,
      this.shopData,
      final List<Skins>? skins})
      : _skins = skins;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? category;
  @override
  final String? defaultSkinUuid;
  @override
  final String? displayIcon;
  @override
  final String? killStreamIcon;
  @override
  final String? assetPath;
  @override
  final WeaponStats? weaponStats;
  @override
  final ShopData? shopData;
  final List<Skins>? _skins;
  @override
  List<Skins>? get skins {
    final value = _skins;
    if (value == null) return null;
    if (_skins is EqualUnmodifiableListView) return _skins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(uuid: $uuid, displayName: $displayName, category: $category, defaultSkinUuid: $defaultSkinUuid, displayIcon: $displayIcon, killStreamIcon: $killStreamIcon, assetPath: $assetPath, weaponStats: $weaponStats, shopData: $shopData, skins: $skins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.defaultSkinUuid, defaultSkinUuid) ||
                other.defaultSkinUuid == defaultSkinUuid) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.killStreamIcon, killStreamIcon) ||
                other.killStreamIcon == killStreamIcon) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.weaponStats, weaponStats) ||
                other.weaponStats == weaponStats) &&
            (identical(other.shopData, shopData) ||
                other.shopData == shopData) &&
            const DeepCollectionEquality().equals(other._skins, _skins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      displayName,
      category,
      defaultSkinUuid,
      displayIcon,
      killStreamIcon,
      assetPath,
      weaponStats,
      shopData,
      const DeepCollectionEquality().hash(_skins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? uuid,
      final String? displayName,
      final String? category,
      final String? defaultSkinUuid,
      final String? displayIcon,
      final String? killStreamIcon,
      final String? assetPath,
      final WeaponStats? weaponStats,
      final ShopData? shopData,
      final List<Skins>? skins}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get category;
  @override
  String? get defaultSkinUuid;
  @override
  String? get displayIcon;
  @override
  String? get killStreamIcon;
  @override
  String? get assetPath;
  @override
  WeaponStats? get weaponStats;
  @override
  ShopData? get shopData;
  @override
  List<Skins>? get skins;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeaponStats _$WeaponStatsFromJson(Map<String, dynamic> json) {
  return _WeaponStats.fromJson(json);
}

/// @nodoc
mixin _$WeaponStats {
  double? get fireRate => throw _privateConstructorUsedError;
  int? get magazineSize => throw _privateConstructorUsedError;
  double? get runSpeedMultiplier => throw _privateConstructorUsedError;
  double? get equipTimeSeconds => throw _privateConstructorUsedError;
  double? get reloadTimeSeconds => throw _privateConstructorUsedError;
  double? get firstBulletAccuracy => throw _privateConstructorUsedError;
  int? get shotgunPelletCount => throw _privateConstructorUsedError;
  String? get wallPenetration => throw _privateConstructorUsedError;
  String? get feature => throw _privateConstructorUsedError;
  String? get fireMode => throw _privateConstructorUsedError;
  String? get altFireType => throw _privateConstructorUsedError;
  AdsStats? get adsStats => throw _privateConstructorUsedError;
  AltShotgunStats? get altShotgunStats => throw _privateConstructorUsedError;
  AirBurstStats? get airBurstStats => throw _privateConstructorUsedError;
  List<DamageRanges>? get damageRanges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeaponStatsCopyWith<WeaponStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeaponStatsCopyWith<$Res> {
  factory $WeaponStatsCopyWith(
          WeaponStats value, $Res Function(WeaponStats) then) =
      _$WeaponStatsCopyWithImpl<$Res, WeaponStats>;
  @useResult
  $Res call(
      {double? fireRate,
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
      List<DamageRanges>? damageRanges});

  $AdsStatsCopyWith<$Res>? get adsStats;
  $AltShotgunStatsCopyWith<$Res>? get altShotgunStats;
  $AirBurstStatsCopyWith<$Res>? get airBurstStats;
}

/// @nodoc
class _$WeaponStatsCopyWithImpl<$Res, $Val extends WeaponStats>
    implements $WeaponStatsCopyWith<$Res> {
  _$WeaponStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fireRate = freezed,
    Object? magazineSize = freezed,
    Object? runSpeedMultiplier = freezed,
    Object? equipTimeSeconds = freezed,
    Object? reloadTimeSeconds = freezed,
    Object? firstBulletAccuracy = freezed,
    Object? shotgunPelletCount = freezed,
    Object? wallPenetration = freezed,
    Object? feature = freezed,
    Object? fireMode = freezed,
    Object? altFireType = freezed,
    Object? adsStats = freezed,
    Object? altShotgunStats = freezed,
    Object? airBurstStats = freezed,
    Object? damageRanges = freezed,
  }) {
    return _then(_value.copyWith(
      fireRate: freezed == fireRate
          ? _value.fireRate
          : fireRate // ignore: cast_nullable_to_non_nullable
              as double?,
      magazineSize: freezed == magazineSize
          ? _value.magazineSize
          : magazineSize // ignore: cast_nullable_to_non_nullable
              as int?,
      runSpeedMultiplier: freezed == runSpeedMultiplier
          ? _value.runSpeedMultiplier
          : runSpeedMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      equipTimeSeconds: freezed == equipTimeSeconds
          ? _value.equipTimeSeconds
          : equipTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      reloadTimeSeconds: freezed == reloadTimeSeconds
          ? _value.reloadTimeSeconds
          : reloadTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      firstBulletAccuracy: freezed == firstBulletAccuracy
          ? _value.firstBulletAccuracy
          : firstBulletAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      shotgunPelletCount: freezed == shotgunPelletCount
          ? _value.shotgunPelletCount
          : shotgunPelletCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wallPenetration: freezed == wallPenetration
          ? _value.wallPenetration
          : wallPenetration // ignore: cast_nullable_to_non_nullable
              as String?,
      feature: freezed == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as String?,
      fireMode: freezed == fireMode
          ? _value.fireMode
          : fireMode // ignore: cast_nullable_to_non_nullable
              as String?,
      altFireType: freezed == altFireType
          ? _value.altFireType
          : altFireType // ignore: cast_nullable_to_non_nullable
              as String?,
      adsStats: freezed == adsStats
          ? _value.adsStats
          : adsStats // ignore: cast_nullable_to_non_nullable
              as AdsStats?,
      altShotgunStats: freezed == altShotgunStats
          ? _value.altShotgunStats
          : altShotgunStats // ignore: cast_nullable_to_non_nullable
              as AltShotgunStats?,
      airBurstStats: freezed == airBurstStats
          ? _value.airBurstStats
          : airBurstStats // ignore: cast_nullable_to_non_nullable
              as AirBurstStats?,
      damageRanges: freezed == damageRanges
          ? _value.damageRanges
          : damageRanges // ignore: cast_nullable_to_non_nullable
              as List<DamageRanges>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdsStatsCopyWith<$Res>? get adsStats {
    if (_value.adsStats == null) {
      return null;
    }

    return $AdsStatsCopyWith<$Res>(_value.adsStats!, (value) {
      return _then(_value.copyWith(adsStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AltShotgunStatsCopyWith<$Res>? get altShotgunStats {
    if (_value.altShotgunStats == null) {
      return null;
    }

    return $AltShotgunStatsCopyWith<$Res>(_value.altShotgunStats!, (value) {
      return _then(_value.copyWith(altShotgunStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirBurstStatsCopyWith<$Res>? get airBurstStats {
    if (_value.airBurstStats == null) {
      return null;
    }

    return $AirBurstStatsCopyWith<$Res>(_value.airBurstStats!, (value) {
      return _then(_value.copyWith(airBurstStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeaponStatsImplCopyWith<$Res>
    implements $WeaponStatsCopyWith<$Res> {
  factory _$$WeaponStatsImplCopyWith(
          _$WeaponStatsImpl value, $Res Function(_$WeaponStatsImpl) then) =
      __$$WeaponStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? fireRate,
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
      List<DamageRanges>? damageRanges});

  @override
  $AdsStatsCopyWith<$Res>? get adsStats;
  @override
  $AltShotgunStatsCopyWith<$Res>? get altShotgunStats;
  @override
  $AirBurstStatsCopyWith<$Res>? get airBurstStats;
}

/// @nodoc
class __$$WeaponStatsImplCopyWithImpl<$Res>
    extends _$WeaponStatsCopyWithImpl<$Res, _$WeaponStatsImpl>
    implements _$$WeaponStatsImplCopyWith<$Res> {
  __$$WeaponStatsImplCopyWithImpl(
      _$WeaponStatsImpl _value, $Res Function(_$WeaponStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fireRate = freezed,
    Object? magazineSize = freezed,
    Object? runSpeedMultiplier = freezed,
    Object? equipTimeSeconds = freezed,
    Object? reloadTimeSeconds = freezed,
    Object? firstBulletAccuracy = freezed,
    Object? shotgunPelletCount = freezed,
    Object? wallPenetration = freezed,
    Object? feature = freezed,
    Object? fireMode = freezed,
    Object? altFireType = freezed,
    Object? adsStats = freezed,
    Object? altShotgunStats = freezed,
    Object? airBurstStats = freezed,
    Object? damageRanges = freezed,
  }) {
    return _then(_$WeaponStatsImpl(
      fireRate: freezed == fireRate
          ? _value.fireRate
          : fireRate // ignore: cast_nullable_to_non_nullable
              as double?,
      magazineSize: freezed == magazineSize
          ? _value.magazineSize
          : magazineSize // ignore: cast_nullable_to_non_nullable
              as int?,
      runSpeedMultiplier: freezed == runSpeedMultiplier
          ? _value.runSpeedMultiplier
          : runSpeedMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      equipTimeSeconds: freezed == equipTimeSeconds
          ? _value.equipTimeSeconds
          : equipTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      reloadTimeSeconds: freezed == reloadTimeSeconds
          ? _value.reloadTimeSeconds
          : reloadTimeSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      firstBulletAccuracy: freezed == firstBulletAccuracy
          ? _value.firstBulletAccuracy
          : firstBulletAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      shotgunPelletCount: freezed == shotgunPelletCount
          ? _value.shotgunPelletCount
          : shotgunPelletCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wallPenetration: freezed == wallPenetration
          ? _value.wallPenetration
          : wallPenetration // ignore: cast_nullable_to_non_nullable
              as String?,
      feature: freezed == feature
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as String?,
      fireMode: freezed == fireMode
          ? _value.fireMode
          : fireMode // ignore: cast_nullable_to_non_nullable
              as String?,
      altFireType: freezed == altFireType
          ? _value.altFireType
          : altFireType // ignore: cast_nullable_to_non_nullable
              as String?,
      adsStats: freezed == adsStats
          ? _value.adsStats
          : adsStats // ignore: cast_nullable_to_non_nullable
              as AdsStats?,
      altShotgunStats: freezed == altShotgunStats
          ? _value.altShotgunStats
          : altShotgunStats // ignore: cast_nullable_to_non_nullable
              as AltShotgunStats?,
      airBurstStats: freezed == airBurstStats
          ? _value.airBurstStats
          : airBurstStats // ignore: cast_nullable_to_non_nullable
              as AirBurstStats?,
      damageRanges: freezed == damageRanges
          ? _value._damageRanges
          : damageRanges // ignore: cast_nullable_to_non_nullable
              as List<DamageRanges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeaponStatsImpl implements _WeaponStats {
  const _$WeaponStatsImpl(
      {this.fireRate,
      this.magazineSize,
      this.runSpeedMultiplier,
      this.equipTimeSeconds,
      this.reloadTimeSeconds,
      this.firstBulletAccuracy,
      this.shotgunPelletCount,
      this.wallPenetration,
      this.feature,
      this.fireMode,
      this.altFireType,
      this.adsStats,
      this.altShotgunStats,
      this.airBurstStats,
      final List<DamageRanges>? damageRanges})
      : _damageRanges = damageRanges;

  factory _$WeaponStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeaponStatsImplFromJson(json);

  @override
  final double? fireRate;
  @override
  final int? magazineSize;
  @override
  final double? runSpeedMultiplier;
  @override
  final double? equipTimeSeconds;
  @override
  final double? reloadTimeSeconds;
  @override
  final double? firstBulletAccuracy;
  @override
  final int? shotgunPelletCount;
  @override
  final String? wallPenetration;
  @override
  final String? feature;
  @override
  final String? fireMode;
  @override
  final String? altFireType;
  @override
  final AdsStats? adsStats;
  @override
  final AltShotgunStats? altShotgunStats;
  @override
  final AirBurstStats? airBurstStats;
  final List<DamageRanges>? _damageRanges;
  @override
  List<DamageRanges>? get damageRanges {
    final value = _damageRanges;
    if (value == null) return null;
    if (_damageRanges is EqualUnmodifiableListView) return _damageRanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WeaponStats(fireRate: $fireRate, magazineSize: $magazineSize, runSpeedMultiplier: $runSpeedMultiplier, equipTimeSeconds: $equipTimeSeconds, reloadTimeSeconds: $reloadTimeSeconds, firstBulletAccuracy: $firstBulletAccuracy, shotgunPelletCount: $shotgunPelletCount, wallPenetration: $wallPenetration, feature: $feature, fireMode: $fireMode, altFireType: $altFireType, adsStats: $adsStats, altShotgunStats: $altShotgunStats, airBurstStats: $airBurstStats, damageRanges: $damageRanges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeaponStatsImpl &&
            (identical(other.fireRate, fireRate) ||
                other.fireRate == fireRate) &&
            (identical(other.magazineSize, magazineSize) ||
                other.magazineSize == magazineSize) &&
            (identical(other.runSpeedMultiplier, runSpeedMultiplier) ||
                other.runSpeedMultiplier == runSpeedMultiplier) &&
            (identical(other.equipTimeSeconds, equipTimeSeconds) ||
                other.equipTimeSeconds == equipTimeSeconds) &&
            (identical(other.reloadTimeSeconds, reloadTimeSeconds) ||
                other.reloadTimeSeconds == reloadTimeSeconds) &&
            (identical(other.firstBulletAccuracy, firstBulletAccuracy) ||
                other.firstBulletAccuracy == firstBulletAccuracy) &&
            (identical(other.shotgunPelletCount, shotgunPelletCount) ||
                other.shotgunPelletCount == shotgunPelletCount) &&
            (identical(other.wallPenetration, wallPenetration) ||
                other.wallPenetration == wallPenetration) &&
            (identical(other.feature, feature) || other.feature == feature) &&
            (identical(other.fireMode, fireMode) ||
                other.fireMode == fireMode) &&
            (identical(other.altFireType, altFireType) ||
                other.altFireType == altFireType) &&
            (identical(other.adsStats, adsStats) ||
                other.adsStats == adsStats) &&
            (identical(other.altShotgunStats, altShotgunStats) ||
                other.altShotgunStats == altShotgunStats) &&
            (identical(other.airBurstStats, airBurstStats) ||
                other.airBurstStats == airBurstStats) &&
            const DeepCollectionEquality()
                .equals(other._damageRanges, _damageRanges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fireRate,
      magazineSize,
      runSpeedMultiplier,
      equipTimeSeconds,
      reloadTimeSeconds,
      firstBulletAccuracy,
      shotgunPelletCount,
      wallPenetration,
      feature,
      fireMode,
      altFireType,
      adsStats,
      altShotgunStats,
      airBurstStats,
      const DeepCollectionEquality().hash(_damageRanges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeaponStatsImplCopyWith<_$WeaponStatsImpl> get copyWith =>
      __$$WeaponStatsImplCopyWithImpl<_$WeaponStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeaponStatsImplToJson(
      this,
    );
  }
}

abstract class _WeaponStats implements WeaponStats {
  const factory _WeaponStats(
      {final double? fireRate,
      final int? magazineSize,
      final double? runSpeedMultiplier,
      final double? equipTimeSeconds,
      final double? reloadTimeSeconds,
      final double? firstBulletAccuracy,
      final int? shotgunPelletCount,
      final String? wallPenetration,
      final String? feature,
      final String? fireMode,
      final String? altFireType,
      final AdsStats? adsStats,
      final AltShotgunStats? altShotgunStats,
      final AirBurstStats? airBurstStats,
      final List<DamageRanges>? damageRanges}) = _$WeaponStatsImpl;

  factory _WeaponStats.fromJson(Map<String, dynamic> json) =
      _$WeaponStatsImpl.fromJson;

  @override
  double? get fireRate;
  @override
  int? get magazineSize;
  @override
  double? get runSpeedMultiplier;
  @override
  double? get equipTimeSeconds;
  @override
  double? get reloadTimeSeconds;
  @override
  double? get firstBulletAccuracy;
  @override
  int? get shotgunPelletCount;
  @override
  String? get wallPenetration;
  @override
  String? get feature;
  @override
  String? get fireMode;
  @override
  String? get altFireType;
  @override
  AdsStats? get adsStats;
  @override
  AltShotgunStats? get altShotgunStats;
  @override
  AirBurstStats? get airBurstStats;
  @override
  List<DamageRanges>? get damageRanges;
  @override
  @JsonKey(ignore: true)
  _$$WeaponStatsImplCopyWith<_$WeaponStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdsStats _$AdsStatsFromJson(Map<String, dynamic> json) {
  return _AdsStats.fromJson(json);
}

/// @nodoc
mixin _$AdsStats {
  double? get zoomMultiplier => throw _privateConstructorUsedError;
  double? get fireRate => throw _privateConstructorUsedError;
  double? get runSpeedMultiplier => throw _privateConstructorUsedError;
  int? get burstCount => throw _privateConstructorUsedError;
  double? get firstBulletAccuracy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsStatsCopyWith<AdsStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsStatsCopyWith<$Res> {
  factory $AdsStatsCopyWith(AdsStats value, $Res Function(AdsStats) then) =
      _$AdsStatsCopyWithImpl<$Res, AdsStats>;
  @useResult
  $Res call(
      {double? zoomMultiplier,
      double? fireRate,
      double? runSpeedMultiplier,
      int? burstCount,
      double? firstBulletAccuracy});
}

/// @nodoc
class _$AdsStatsCopyWithImpl<$Res, $Val extends AdsStats>
    implements $AdsStatsCopyWith<$Res> {
  _$AdsStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomMultiplier = freezed,
    Object? fireRate = freezed,
    Object? runSpeedMultiplier = freezed,
    Object? burstCount = freezed,
    Object? firstBulletAccuracy = freezed,
  }) {
    return _then(_value.copyWith(
      zoomMultiplier: freezed == zoomMultiplier
          ? _value.zoomMultiplier
          : zoomMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      fireRate: freezed == fireRate
          ? _value.fireRate
          : fireRate // ignore: cast_nullable_to_non_nullable
              as double?,
      runSpeedMultiplier: freezed == runSpeedMultiplier
          ? _value.runSpeedMultiplier
          : runSpeedMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      burstCount: freezed == burstCount
          ? _value.burstCount
          : burstCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstBulletAccuracy: freezed == firstBulletAccuracy
          ? _value.firstBulletAccuracy
          : firstBulletAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsStatsImplCopyWith<$Res>
    implements $AdsStatsCopyWith<$Res> {
  factory _$$AdsStatsImplCopyWith(
          _$AdsStatsImpl value, $Res Function(_$AdsStatsImpl) then) =
      __$$AdsStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? zoomMultiplier,
      double? fireRate,
      double? runSpeedMultiplier,
      int? burstCount,
      double? firstBulletAccuracy});
}

/// @nodoc
class __$$AdsStatsImplCopyWithImpl<$Res>
    extends _$AdsStatsCopyWithImpl<$Res, _$AdsStatsImpl>
    implements _$$AdsStatsImplCopyWith<$Res> {
  __$$AdsStatsImplCopyWithImpl(
      _$AdsStatsImpl _value, $Res Function(_$AdsStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoomMultiplier = freezed,
    Object? fireRate = freezed,
    Object? runSpeedMultiplier = freezed,
    Object? burstCount = freezed,
    Object? firstBulletAccuracy = freezed,
  }) {
    return _then(_$AdsStatsImpl(
      zoomMultiplier: freezed == zoomMultiplier
          ? _value.zoomMultiplier
          : zoomMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      fireRate: freezed == fireRate
          ? _value.fireRate
          : fireRate // ignore: cast_nullable_to_non_nullable
              as double?,
      runSpeedMultiplier: freezed == runSpeedMultiplier
          ? _value.runSpeedMultiplier
          : runSpeedMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      burstCount: freezed == burstCount
          ? _value.burstCount
          : burstCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstBulletAccuracy: freezed == firstBulletAccuracy
          ? _value.firstBulletAccuracy
          : firstBulletAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdsStatsImpl implements _AdsStats {
  const _$AdsStatsImpl(
      {this.zoomMultiplier,
      this.fireRate,
      this.runSpeedMultiplier,
      this.burstCount,
      this.firstBulletAccuracy});

  factory _$AdsStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdsStatsImplFromJson(json);

  @override
  final double? zoomMultiplier;
  @override
  final double? fireRate;
  @override
  final double? runSpeedMultiplier;
  @override
  final int? burstCount;
  @override
  final double? firstBulletAccuracy;

  @override
  String toString() {
    return 'AdsStats(zoomMultiplier: $zoomMultiplier, fireRate: $fireRate, runSpeedMultiplier: $runSpeedMultiplier, burstCount: $burstCount, firstBulletAccuracy: $firstBulletAccuracy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsStatsImpl &&
            (identical(other.zoomMultiplier, zoomMultiplier) ||
                other.zoomMultiplier == zoomMultiplier) &&
            (identical(other.fireRate, fireRate) ||
                other.fireRate == fireRate) &&
            (identical(other.runSpeedMultiplier, runSpeedMultiplier) ||
                other.runSpeedMultiplier == runSpeedMultiplier) &&
            (identical(other.burstCount, burstCount) ||
                other.burstCount == burstCount) &&
            (identical(other.firstBulletAccuracy, firstBulletAccuracy) ||
                other.firstBulletAccuracy == firstBulletAccuracy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, zoomMultiplier, fireRate,
      runSpeedMultiplier, burstCount, firstBulletAccuracy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsStatsImplCopyWith<_$AdsStatsImpl> get copyWith =>
      __$$AdsStatsImplCopyWithImpl<_$AdsStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdsStatsImplToJson(
      this,
    );
  }
}

abstract class _AdsStats implements AdsStats {
  const factory _AdsStats(
      {final double? zoomMultiplier,
      final double? fireRate,
      final double? runSpeedMultiplier,
      final int? burstCount,
      final double? firstBulletAccuracy}) = _$AdsStatsImpl;

  factory _AdsStats.fromJson(Map<String, dynamic> json) =
      _$AdsStatsImpl.fromJson;

  @override
  double? get zoomMultiplier;
  @override
  double? get fireRate;
  @override
  double? get runSpeedMultiplier;
  @override
  int? get burstCount;
  @override
  double? get firstBulletAccuracy;
  @override
  @JsonKey(ignore: true)
  _$$AdsStatsImplCopyWith<_$AdsStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AltShotgunStats _$AltShotgunStatsFromJson(Map<String, dynamic> json) {
  return _AltShotgunStats.fromJson(json);
}

/// @nodoc
mixin _$AltShotgunStats {
  int? get shotgunPelletCount => throw _privateConstructorUsedError;
  double? get burstRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AltShotgunStatsCopyWith<AltShotgunStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AltShotgunStatsCopyWith<$Res> {
  factory $AltShotgunStatsCopyWith(
          AltShotgunStats value, $Res Function(AltShotgunStats) then) =
      _$AltShotgunStatsCopyWithImpl<$Res, AltShotgunStats>;
  @useResult
  $Res call({int? shotgunPelletCount, double? burstRate});
}

/// @nodoc
class _$AltShotgunStatsCopyWithImpl<$Res, $Val extends AltShotgunStats>
    implements $AltShotgunStatsCopyWith<$Res> {
  _$AltShotgunStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shotgunPelletCount = freezed,
    Object? burstRate = freezed,
  }) {
    return _then(_value.copyWith(
      shotgunPelletCount: freezed == shotgunPelletCount
          ? _value.shotgunPelletCount
          : shotgunPelletCount // ignore: cast_nullable_to_non_nullable
              as int?,
      burstRate: freezed == burstRate
          ? _value.burstRate
          : burstRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AltShotgunStatsImplCopyWith<$Res>
    implements $AltShotgunStatsCopyWith<$Res> {
  factory _$$AltShotgunStatsImplCopyWith(_$AltShotgunStatsImpl value,
          $Res Function(_$AltShotgunStatsImpl) then) =
      __$$AltShotgunStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? shotgunPelletCount, double? burstRate});
}

/// @nodoc
class __$$AltShotgunStatsImplCopyWithImpl<$Res>
    extends _$AltShotgunStatsCopyWithImpl<$Res, _$AltShotgunStatsImpl>
    implements _$$AltShotgunStatsImplCopyWith<$Res> {
  __$$AltShotgunStatsImplCopyWithImpl(
      _$AltShotgunStatsImpl _value, $Res Function(_$AltShotgunStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shotgunPelletCount = freezed,
    Object? burstRate = freezed,
  }) {
    return _then(_$AltShotgunStatsImpl(
      shotgunPelletCount: freezed == shotgunPelletCount
          ? _value.shotgunPelletCount
          : shotgunPelletCount // ignore: cast_nullable_to_non_nullable
              as int?,
      burstRate: freezed == burstRate
          ? _value.burstRate
          : burstRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AltShotgunStatsImpl implements _AltShotgunStats {
  const _$AltShotgunStatsImpl({this.shotgunPelletCount, this.burstRate});

  factory _$AltShotgunStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AltShotgunStatsImplFromJson(json);

  @override
  final int? shotgunPelletCount;
  @override
  final double? burstRate;

  @override
  String toString() {
    return 'AltShotgunStats(shotgunPelletCount: $shotgunPelletCount, burstRate: $burstRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AltShotgunStatsImpl &&
            (identical(other.shotgunPelletCount, shotgunPelletCount) ||
                other.shotgunPelletCount == shotgunPelletCount) &&
            (identical(other.burstRate, burstRate) ||
                other.burstRate == burstRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shotgunPelletCount, burstRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AltShotgunStatsImplCopyWith<_$AltShotgunStatsImpl> get copyWith =>
      __$$AltShotgunStatsImplCopyWithImpl<_$AltShotgunStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AltShotgunStatsImplToJson(
      this,
    );
  }
}

abstract class _AltShotgunStats implements AltShotgunStats {
  const factory _AltShotgunStats(
      {final int? shotgunPelletCount,
      final double? burstRate}) = _$AltShotgunStatsImpl;

  factory _AltShotgunStats.fromJson(Map<String, dynamic> json) =
      _$AltShotgunStatsImpl.fromJson;

  @override
  int? get shotgunPelletCount;
  @override
  double? get burstRate;
  @override
  @JsonKey(ignore: true)
  _$$AltShotgunStatsImplCopyWith<_$AltShotgunStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AirBurstStats _$AirBurstStatsFromJson(Map<String, dynamic> json) {
  return _AirBurstStats.fromJson(json);
}

/// @nodoc
mixin _$AirBurstStats {
  int? get shotgunPelletCount => throw _privateConstructorUsedError;
  double? get burstDistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirBurstStatsCopyWith<AirBurstStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirBurstStatsCopyWith<$Res> {
  factory $AirBurstStatsCopyWith(
          AirBurstStats value, $Res Function(AirBurstStats) then) =
      _$AirBurstStatsCopyWithImpl<$Res, AirBurstStats>;
  @useResult
  $Res call({int? shotgunPelletCount, double? burstDistance});
}

/// @nodoc
class _$AirBurstStatsCopyWithImpl<$Res, $Val extends AirBurstStats>
    implements $AirBurstStatsCopyWith<$Res> {
  _$AirBurstStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shotgunPelletCount = freezed,
    Object? burstDistance = freezed,
  }) {
    return _then(_value.copyWith(
      shotgunPelletCount: freezed == shotgunPelletCount
          ? _value.shotgunPelletCount
          : shotgunPelletCount // ignore: cast_nullable_to_non_nullable
              as int?,
      burstDistance: freezed == burstDistance
          ? _value.burstDistance
          : burstDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirBurstStatsImplCopyWith<$Res>
    implements $AirBurstStatsCopyWith<$Res> {
  factory _$$AirBurstStatsImplCopyWith(
          _$AirBurstStatsImpl value, $Res Function(_$AirBurstStatsImpl) then) =
      __$$AirBurstStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? shotgunPelletCount, double? burstDistance});
}

/// @nodoc
class __$$AirBurstStatsImplCopyWithImpl<$Res>
    extends _$AirBurstStatsCopyWithImpl<$Res, _$AirBurstStatsImpl>
    implements _$$AirBurstStatsImplCopyWith<$Res> {
  __$$AirBurstStatsImplCopyWithImpl(
      _$AirBurstStatsImpl _value, $Res Function(_$AirBurstStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shotgunPelletCount = freezed,
    Object? burstDistance = freezed,
  }) {
    return _then(_$AirBurstStatsImpl(
      shotgunPelletCount: freezed == shotgunPelletCount
          ? _value.shotgunPelletCount
          : shotgunPelletCount // ignore: cast_nullable_to_non_nullable
              as int?,
      burstDistance: freezed == burstDistance
          ? _value.burstDistance
          : burstDistance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirBurstStatsImpl implements _AirBurstStats {
  const _$AirBurstStatsImpl({this.shotgunPelletCount, this.burstDistance});

  factory _$AirBurstStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirBurstStatsImplFromJson(json);

  @override
  final int? shotgunPelletCount;
  @override
  final double? burstDistance;

  @override
  String toString() {
    return 'AirBurstStats(shotgunPelletCount: $shotgunPelletCount, burstDistance: $burstDistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirBurstStatsImpl &&
            (identical(other.shotgunPelletCount, shotgunPelletCount) ||
                other.shotgunPelletCount == shotgunPelletCount) &&
            (identical(other.burstDistance, burstDistance) ||
                other.burstDistance == burstDistance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shotgunPelletCount, burstDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirBurstStatsImplCopyWith<_$AirBurstStatsImpl> get copyWith =>
      __$$AirBurstStatsImplCopyWithImpl<_$AirBurstStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirBurstStatsImplToJson(
      this,
    );
  }
}

abstract class _AirBurstStats implements AirBurstStats {
  const factory _AirBurstStats(
      {final int? shotgunPelletCount,
      final double? burstDistance}) = _$AirBurstStatsImpl;

  factory _AirBurstStats.fromJson(Map<String, dynamic> json) =
      _$AirBurstStatsImpl.fromJson;

  @override
  int? get shotgunPelletCount;
  @override
  double? get burstDistance;
  @override
  @JsonKey(ignore: true)
  _$$AirBurstStatsImplCopyWith<_$AirBurstStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DamageRanges _$DamageRangesFromJson(Map<String, dynamic> json) {
  return _DamageRanges.fromJson(json);
}

/// @nodoc
mixin _$DamageRanges {
  int? get rangeStartMeters => throw _privateConstructorUsedError;
  int? get rangeEndMeters => throw _privateConstructorUsedError;
  double? get headDamage => throw _privateConstructorUsedError;
  int? get bodyDamage => throw _privateConstructorUsedError;
  double? get legDamage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageRangesCopyWith<DamageRanges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageRangesCopyWith<$Res> {
  factory $DamageRangesCopyWith(
          DamageRanges value, $Res Function(DamageRanges) then) =
      _$DamageRangesCopyWithImpl<$Res, DamageRanges>;
  @useResult
  $Res call(
      {int? rangeStartMeters,
      int? rangeEndMeters,
      double? headDamage,
      int? bodyDamage,
      double? legDamage});
}

/// @nodoc
class _$DamageRangesCopyWithImpl<$Res, $Val extends DamageRanges>
    implements $DamageRangesCopyWith<$Res> {
  _$DamageRangesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeStartMeters = freezed,
    Object? rangeEndMeters = freezed,
    Object? headDamage = freezed,
    Object? bodyDamage = freezed,
    Object? legDamage = freezed,
  }) {
    return _then(_value.copyWith(
      rangeStartMeters: freezed == rangeStartMeters
          ? _value.rangeStartMeters
          : rangeStartMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      rangeEndMeters: freezed == rangeEndMeters
          ? _value.rangeEndMeters
          : rangeEndMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      headDamage: freezed == headDamage
          ? _value.headDamage
          : headDamage // ignore: cast_nullable_to_non_nullable
              as double?,
      bodyDamage: freezed == bodyDamage
          ? _value.bodyDamage
          : bodyDamage // ignore: cast_nullable_to_non_nullable
              as int?,
      legDamage: freezed == legDamage
          ? _value.legDamage
          : legDamage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DamageRangesImplCopyWith<$Res>
    implements $DamageRangesCopyWith<$Res> {
  factory _$$DamageRangesImplCopyWith(
          _$DamageRangesImpl value, $Res Function(_$DamageRangesImpl) then) =
      __$$DamageRangesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? rangeStartMeters,
      int? rangeEndMeters,
      double? headDamage,
      int? bodyDamage,
      double? legDamage});
}

/// @nodoc
class __$$DamageRangesImplCopyWithImpl<$Res>
    extends _$DamageRangesCopyWithImpl<$Res, _$DamageRangesImpl>
    implements _$$DamageRangesImplCopyWith<$Res> {
  __$$DamageRangesImplCopyWithImpl(
      _$DamageRangesImpl _value, $Res Function(_$DamageRangesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeStartMeters = freezed,
    Object? rangeEndMeters = freezed,
    Object? headDamage = freezed,
    Object? bodyDamage = freezed,
    Object? legDamage = freezed,
  }) {
    return _then(_$DamageRangesImpl(
      rangeStartMeters: freezed == rangeStartMeters
          ? _value.rangeStartMeters
          : rangeStartMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      rangeEndMeters: freezed == rangeEndMeters
          ? _value.rangeEndMeters
          : rangeEndMeters // ignore: cast_nullable_to_non_nullable
              as int?,
      headDamage: freezed == headDamage
          ? _value.headDamage
          : headDamage // ignore: cast_nullable_to_non_nullable
              as double?,
      bodyDamage: freezed == bodyDamage
          ? _value.bodyDamage
          : bodyDamage // ignore: cast_nullable_to_non_nullable
              as int?,
      legDamage: freezed == legDamage
          ? _value.legDamage
          : legDamage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DamageRangesImpl implements _DamageRanges {
  const _$DamageRangesImpl(
      {this.rangeStartMeters,
      this.rangeEndMeters,
      this.headDamage,
      this.bodyDamage,
      this.legDamage});

  factory _$DamageRangesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DamageRangesImplFromJson(json);

  @override
  final int? rangeStartMeters;
  @override
  final int? rangeEndMeters;
  @override
  final double? headDamage;
  @override
  final int? bodyDamage;
  @override
  final double? legDamage;

  @override
  String toString() {
    return 'DamageRanges(rangeStartMeters: $rangeStartMeters, rangeEndMeters: $rangeEndMeters, headDamage: $headDamage, bodyDamage: $bodyDamage, legDamage: $legDamage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DamageRangesImpl &&
            (identical(other.rangeStartMeters, rangeStartMeters) ||
                other.rangeStartMeters == rangeStartMeters) &&
            (identical(other.rangeEndMeters, rangeEndMeters) ||
                other.rangeEndMeters == rangeEndMeters) &&
            (identical(other.headDamage, headDamage) ||
                other.headDamage == headDamage) &&
            (identical(other.bodyDamage, bodyDamage) ||
                other.bodyDamage == bodyDamage) &&
            (identical(other.legDamage, legDamage) ||
                other.legDamage == legDamage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rangeStartMeters, rangeEndMeters,
      headDamage, bodyDamage, legDamage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DamageRangesImplCopyWith<_$DamageRangesImpl> get copyWith =>
      __$$DamageRangesImplCopyWithImpl<_$DamageRangesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DamageRangesImplToJson(
      this,
    );
  }
}

abstract class _DamageRanges implements DamageRanges {
  const factory _DamageRanges(
      {final int? rangeStartMeters,
      final int? rangeEndMeters,
      final double? headDamage,
      final int? bodyDamage,
      final double? legDamage}) = _$DamageRangesImpl;

  factory _DamageRanges.fromJson(Map<String, dynamic> json) =
      _$DamageRangesImpl.fromJson;

  @override
  int? get rangeStartMeters;
  @override
  int? get rangeEndMeters;
  @override
  double? get headDamage;
  @override
  int? get bodyDamage;
  @override
  double? get legDamage;
  @override
  @JsonKey(ignore: true)
  _$$DamageRangesImplCopyWith<_$DamageRangesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopData _$ShopDataFromJson(Map<String, dynamic> json) {
  return _ShopData.fromJson(json);
}

/// @nodoc
mixin _$ShopData {
  int? get cost => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get shopOrderPriority => throw _privateConstructorUsedError;
  String? get categoryText => throw _privateConstructorUsedError;
  GridPosition? get gridPosition => throw _privateConstructorUsedError;
  bool? get canBeTrashed => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get newImage => throw _privateConstructorUsedError;
  String? get newImage2 => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDataCopyWith<ShopData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDataCopyWith<$Res> {
  factory $ShopDataCopyWith(ShopData value, $Res Function(ShopData) then) =
      _$ShopDataCopyWithImpl<$Res, ShopData>;
  @useResult
  $Res call(
      {int? cost,
      String? category,
      int? shopOrderPriority,
      String? categoryText,
      GridPosition? gridPosition,
      bool? canBeTrashed,
      String? image,
      String? newImage,
      String? newImage2,
      String? assetPath});

  $GridPositionCopyWith<$Res>? get gridPosition;
}

/// @nodoc
class _$ShopDataCopyWithImpl<$Res, $Val extends ShopData>
    implements $ShopDataCopyWith<$Res> {
  _$ShopDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cost = freezed,
    Object? category = freezed,
    Object? shopOrderPriority = freezed,
    Object? categoryText = freezed,
    Object? gridPosition = freezed,
    Object? canBeTrashed = freezed,
    Object? image = freezed,
    Object? newImage = freezed,
    Object? newImage2 = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      shopOrderPriority: freezed == shopOrderPriority
          ? _value.shopOrderPriority
          : shopOrderPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryText: freezed == categoryText
          ? _value.categoryText
          : categoryText // ignore: cast_nullable_to_non_nullable
              as String?,
      gridPosition: freezed == gridPosition
          ? _value.gridPosition
          : gridPosition // ignore: cast_nullable_to_non_nullable
              as GridPosition?,
      canBeTrashed: freezed == canBeTrashed
          ? _value.canBeTrashed
          : canBeTrashed // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      newImage: freezed == newImage
          ? _value.newImage
          : newImage // ignore: cast_nullable_to_non_nullable
              as String?,
      newImage2: freezed == newImage2
          ? _value.newImage2
          : newImage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GridPositionCopyWith<$Res>? get gridPosition {
    if (_value.gridPosition == null) {
      return null;
    }

    return $GridPositionCopyWith<$Res>(_value.gridPosition!, (value) {
      return _then(_value.copyWith(gridPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopDataImplCopyWith<$Res>
    implements $ShopDataCopyWith<$Res> {
  factory _$$ShopDataImplCopyWith(
          _$ShopDataImpl value, $Res Function(_$ShopDataImpl) then) =
      __$$ShopDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? cost,
      String? category,
      int? shopOrderPriority,
      String? categoryText,
      GridPosition? gridPosition,
      bool? canBeTrashed,
      String? image,
      String? newImage,
      String? newImage2,
      String? assetPath});

  @override
  $GridPositionCopyWith<$Res>? get gridPosition;
}

/// @nodoc
class __$$ShopDataImplCopyWithImpl<$Res>
    extends _$ShopDataCopyWithImpl<$Res, _$ShopDataImpl>
    implements _$$ShopDataImplCopyWith<$Res> {
  __$$ShopDataImplCopyWithImpl(
      _$ShopDataImpl _value, $Res Function(_$ShopDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cost = freezed,
    Object? category = freezed,
    Object? shopOrderPriority = freezed,
    Object? categoryText = freezed,
    Object? gridPosition = freezed,
    Object? canBeTrashed = freezed,
    Object? image = freezed,
    Object? newImage = freezed,
    Object? newImage2 = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$ShopDataImpl(
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      shopOrderPriority: freezed == shopOrderPriority
          ? _value.shopOrderPriority
          : shopOrderPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryText: freezed == categoryText
          ? _value.categoryText
          : categoryText // ignore: cast_nullable_to_non_nullable
              as String?,
      gridPosition: freezed == gridPosition
          ? _value.gridPosition
          : gridPosition // ignore: cast_nullable_to_non_nullable
              as GridPosition?,
      canBeTrashed: freezed == canBeTrashed
          ? _value.canBeTrashed
          : canBeTrashed // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      newImage: freezed == newImage
          ? _value.newImage
          : newImage // ignore: cast_nullable_to_non_nullable
              as String?,
      newImage2: freezed == newImage2
          ? _value.newImage2
          : newImage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopDataImpl implements _ShopData {
  const _$ShopDataImpl(
      {this.cost,
      this.category,
      this.shopOrderPriority,
      this.categoryText,
      this.gridPosition,
      this.canBeTrashed,
      this.image,
      this.newImage,
      this.newImage2,
      this.assetPath});

  factory _$ShopDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopDataImplFromJson(json);

  @override
  final int? cost;
  @override
  final String? category;
  @override
  final int? shopOrderPriority;
  @override
  final String? categoryText;
  @override
  final GridPosition? gridPosition;
  @override
  final bool? canBeTrashed;
  @override
  final String? image;
  @override
  final String? newImage;
  @override
  final String? newImage2;
  @override
  final String? assetPath;

  @override
  String toString() {
    return 'ShopData(cost: $cost, category: $category, shopOrderPriority: $shopOrderPriority, categoryText: $categoryText, gridPosition: $gridPosition, canBeTrashed: $canBeTrashed, image: $image, newImage: $newImage, newImage2: $newImage2, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopDataImpl &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.shopOrderPriority, shopOrderPriority) ||
                other.shopOrderPriority == shopOrderPriority) &&
            (identical(other.categoryText, categoryText) ||
                other.categoryText == categoryText) &&
            (identical(other.gridPosition, gridPosition) ||
                other.gridPosition == gridPosition) &&
            (identical(other.canBeTrashed, canBeTrashed) ||
                other.canBeTrashed == canBeTrashed) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.newImage, newImage) ||
                other.newImage == newImage) &&
            (identical(other.newImage2, newImage2) ||
                other.newImage2 == newImage2) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cost,
      category,
      shopOrderPriority,
      categoryText,
      gridPosition,
      canBeTrashed,
      image,
      newImage,
      newImage2,
      assetPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopDataImplCopyWith<_$ShopDataImpl> get copyWith =>
      __$$ShopDataImplCopyWithImpl<_$ShopDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopDataImplToJson(
      this,
    );
  }
}

abstract class _ShopData implements ShopData {
  const factory _ShopData(
      {final int? cost,
      final String? category,
      final int? shopOrderPriority,
      final String? categoryText,
      final GridPosition? gridPosition,
      final bool? canBeTrashed,
      final String? image,
      final String? newImage,
      final String? newImage2,
      final String? assetPath}) = _$ShopDataImpl;

  factory _ShopData.fromJson(Map<String, dynamic> json) =
      _$ShopDataImpl.fromJson;

  @override
  int? get cost;
  @override
  String? get category;
  @override
  int? get shopOrderPriority;
  @override
  String? get categoryText;
  @override
  GridPosition? get gridPosition;
  @override
  bool? get canBeTrashed;
  @override
  String? get image;
  @override
  String? get newImage;
  @override
  String? get newImage2;
  @override
  String? get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$ShopDataImplCopyWith<_$ShopDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GridPosition _$GridPositionFromJson(Map<String, dynamic> json) {
  return _GridPosition.fromJson(json);
}

/// @nodoc
mixin _$GridPosition {
  int? get row => throw _privateConstructorUsedError;
  int? get column => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GridPositionCopyWith<GridPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridPositionCopyWith<$Res> {
  factory $GridPositionCopyWith(
          GridPosition value, $Res Function(GridPosition) then) =
      _$GridPositionCopyWithImpl<$Res, GridPosition>;
  @useResult
  $Res call({int? row, int? column});
}

/// @nodoc
class _$GridPositionCopyWithImpl<$Res, $Val extends GridPosition>
    implements $GridPositionCopyWith<$Res> {
  _$GridPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_value.copyWith(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GridPositionImplCopyWith<$Res>
    implements $GridPositionCopyWith<$Res> {
  factory _$$GridPositionImplCopyWith(
          _$GridPositionImpl value, $Res Function(_$GridPositionImpl) then) =
      __$$GridPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? row, int? column});
}

/// @nodoc
class __$$GridPositionImplCopyWithImpl<$Res>
    extends _$GridPositionCopyWithImpl<$Res, _$GridPositionImpl>
    implements _$$GridPositionImplCopyWith<$Res> {
  __$$GridPositionImplCopyWithImpl(
      _$GridPositionImpl _value, $Res Function(_$GridPositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_$GridPositionImpl(
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GridPositionImpl implements _GridPosition {
  const _$GridPositionImpl({this.row, this.column});

  factory _$GridPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GridPositionImplFromJson(json);

  @override
  final int? row;
  @override
  final int? column;

  @override
  String toString() {
    return 'GridPosition(row: $row, column: $column)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridPositionImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, row, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridPositionImplCopyWith<_$GridPositionImpl> get copyWith =>
      __$$GridPositionImplCopyWithImpl<_$GridPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GridPositionImplToJson(
      this,
    );
  }
}

abstract class _GridPosition implements GridPosition {
  const factory _GridPosition({final int? row, final int? column}) =
      _$GridPositionImpl;

  factory _GridPosition.fromJson(Map<String, dynamic> json) =
      _$GridPositionImpl.fromJson;

  @override
  int? get row;
  @override
  int? get column;
  @override
  @JsonKey(ignore: true)
  _$$GridPositionImplCopyWith<_$GridPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Skins _$SkinsFromJson(Map<String, dynamic> json) {
  return _Skins.fromJson(json);
}

/// @nodoc
mixin _$Skins {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get themeUuid => throw _privateConstructorUsedError;
  String? get contentTierUuid => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get wallpaper => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;
  List<Chromas>? get chromas => throw _privateConstructorUsedError;
  List<Levels>? get levels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkinsCopyWith<Skins> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkinsCopyWith<$Res> {
  factory $SkinsCopyWith(Skins value, $Res Function(Skins) then) =
      _$SkinsCopyWithImpl<$Res, Skins>;
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? themeUuid,
      String? contentTierUuid,
      String? displayIcon,
      String? wallpaper,
      String? assetPath,
      List<Chromas>? chromas,
      List<Levels>? levels});
}

/// @nodoc
class _$SkinsCopyWithImpl<$Res, $Val extends Skins>
    implements $SkinsCopyWith<$Res> {
  _$SkinsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? themeUuid = freezed,
    Object? contentTierUuid = freezed,
    Object? displayIcon = freezed,
    Object? wallpaper = freezed,
    Object? assetPath = freezed,
    Object? chromas = freezed,
    Object? levels = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      themeUuid: freezed == themeUuid
          ? _value.themeUuid
          : themeUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTierUuid: freezed == contentTierUuid
          ? _value.contentTierUuid
          : contentTierUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      wallpaper: freezed == wallpaper
          ? _value.wallpaper
          : wallpaper // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      chromas: freezed == chromas
          ? _value.chromas
          : chromas // ignore: cast_nullable_to_non_nullable
              as List<Chromas>?,
      levels: freezed == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Levels>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkinsImplCopyWith<$Res> implements $SkinsCopyWith<$Res> {
  factory _$$SkinsImplCopyWith(
          _$SkinsImpl value, $Res Function(_$SkinsImpl) then) =
      __$$SkinsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? themeUuid,
      String? contentTierUuid,
      String? displayIcon,
      String? wallpaper,
      String? assetPath,
      List<Chromas>? chromas,
      List<Levels>? levels});
}

/// @nodoc
class __$$SkinsImplCopyWithImpl<$Res>
    extends _$SkinsCopyWithImpl<$Res, _$SkinsImpl>
    implements _$$SkinsImplCopyWith<$Res> {
  __$$SkinsImplCopyWithImpl(
      _$SkinsImpl _value, $Res Function(_$SkinsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? themeUuid = freezed,
    Object? contentTierUuid = freezed,
    Object? displayIcon = freezed,
    Object? wallpaper = freezed,
    Object? assetPath = freezed,
    Object? chromas = freezed,
    Object? levels = freezed,
  }) {
    return _then(_$SkinsImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      themeUuid: freezed == themeUuid
          ? _value.themeUuid
          : themeUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTierUuid: freezed == contentTierUuid
          ? _value.contentTierUuid
          : contentTierUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      wallpaper: freezed == wallpaper
          ? _value.wallpaper
          : wallpaper // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      chromas: freezed == chromas
          ? _value._chromas
          : chromas // ignore: cast_nullable_to_non_nullable
              as List<Chromas>?,
      levels: freezed == levels
          ? _value._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<Levels>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkinsImpl implements _Skins {
  const _$SkinsImpl(
      {this.uuid,
      this.displayName,
      this.themeUuid,
      this.contentTierUuid,
      this.displayIcon,
      this.wallpaper,
      this.assetPath,
      final List<Chromas>? chromas,
      final List<Levels>? levels})
      : _chromas = chromas,
        _levels = levels;

  factory _$SkinsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkinsImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? themeUuid;
  @override
  final String? contentTierUuid;
  @override
  final String? displayIcon;
  @override
  final String? wallpaper;
  @override
  final String? assetPath;
  final List<Chromas>? _chromas;
  @override
  List<Chromas>? get chromas {
    final value = _chromas;
    if (value == null) return null;
    if (_chromas is EqualUnmodifiableListView) return _chromas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Levels>? _levels;
  @override
  List<Levels>? get levels {
    final value = _levels;
    if (value == null) return null;
    if (_levels is EqualUnmodifiableListView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Skins(uuid: $uuid, displayName: $displayName, themeUuid: $themeUuid, contentTierUuid: $contentTierUuid, displayIcon: $displayIcon, wallpaper: $wallpaper, assetPath: $assetPath, chromas: $chromas, levels: $levels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkinsImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.themeUuid, themeUuid) ||
                other.themeUuid == themeUuid) &&
            (identical(other.contentTierUuid, contentTierUuid) ||
                other.contentTierUuid == contentTierUuid) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.wallpaper, wallpaper) ||
                other.wallpaper == wallpaper) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            const DeepCollectionEquality().equals(other._chromas, _chromas) &&
            const DeepCollectionEquality().equals(other._levels, _levels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      displayName,
      themeUuid,
      contentTierUuid,
      displayIcon,
      wallpaper,
      assetPath,
      const DeepCollectionEquality().hash(_chromas),
      const DeepCollectionEquality().hash(_levels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkinsImplCopyWith<_$SkinsImpl> get copyWith =>
      __$$SkinsImplCopyWithImpl<_$SkinsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkinsImplToJson(
      this,
    );
  }
}

abstract class _Skins implements Skins {
  const factory _Skins(
      {final String? uuid,
      final String? displayName,
      final String? themeUuid,
      final String? contentTierUuid,
      final String? displayIcon,
      final String? wallpaper,
      final String? assetPath,
      final List<Chromas>? chromas,
      final List<Levels>? levels}) = _$SkinsImpl;

  factory _Skins.fromJson(Map<String, dynamic> json) = _$SkinsImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get themeUuid;
  @override
  String? get contentTierUuid;
  @override
  String? get displayIcon;
  @override
  String? get wallpaper;
  @override
  String? get assetPath;
  @override
  List<Chromas>? get chromas;
  @override
  List<Levels>? get levels;
  @override
  @JsonKey(ignore: true)
  _$$SkinsImplCopyWith<_$SkinsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chromas _$ChromasFromJson(Map<String, dynamic> json) {
  return _Chromas.fromJson(json);
}

/// @nodoc
mixin _$Chromas {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get fullRender => throw _privateConstructorUsedError;
  String? get swatch => throw _privateConstructorUsedError;
  String? get streamedVideo => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChromasCopyWith<Chromas> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChromasCopyWith<$Res> {
  factory $ChromasCopyWith(Chromas value, $Res Function(Chromas) then) =
      _$ChromasCopyWithImpl<$Res, Chromas>;
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? displayIcon,
      String? fullRender,
      String? swatch,
      String? streamedVideo,
      String? assetPath});
}

/// @nodoc
class _$ChromasCopyWithImpl<$Res, $Val extends Chromas>
    implements $ChromasCopyWith<$Res> {
  _$ChromasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? fullRender = freezed,
    Object? swatch = freezed,
    Object? streamedVideo = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      fullRender: freezed == fullRender
          ? _value.fullRender
          : fullRender // ignore: cast_nullable_to_non_nullable
              as String?,
      swatch: freezed == swatch
          ? _value.swatch
          : swatch // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: freezed == streamedVideo
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChromasImplCopyWith<$Res> implements $ChromasCopyWith<$Res> {
  factory _$$ChromasImplCopyWith(
          _$ChromasImpl value, $Res Function(_$ChromasImpl) then) =
      __$$ChromasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? displayIcon,
      String? fullRender,
      String? swatch,
      String? streamedVideo,
      String? assetPath});
}

/// @nodoc
class __$$ChromasImplCopyWithImpl<$Res>
    extends _$ChromasCopyWithImpl<$Res, _$ChromasImpl>
    implements _$$ChromasImplCopyWith<$Res> {
  __$$ChromasImplCopyWithImpl(
      _$ChromasImpl _value, $Res Function(_$ChromasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? displayIcon = freezed,
    Object? fullRender = freezed,
    Object? swatch = freezed,
    Object? streamedVideo = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$ChromasImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      fullRender: freezed == fullRender
          ? _value.fullRender
          : fullRender // ignore: cast_nullable_to_non_nullable
              as String?,
      swatch: freezed == swatch
          ? _value.swatch
          : swatch // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: freezed == streamedVideo
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChromasImpl implements _Chromas {
  const _$ChromasImpl(
      {this.uuid,
      this.displayName,
      this.displayIcon,
      this.fullRender,
      this.swatch,
      this.streamedVideo,
      this.assetPath});

  factory _$ChromasImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChromasImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? displayIcon;
  @override
  final String? fullRender;
  @override
  final String? swatch;
  @override
  final String? streamedVideo;
  @override
  final String? assetPath;

  @override
  String toString() {
    return 'Chromas(uuid: $uuid, displayName: $displayName, displayIcon: $displayIcon, fullRender: $fullRender, swatch: $swatch, streamedVideo: $streamedVideo, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChromasImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.fullRender, fullRender) ||
                other.fullRender == fullRender) &&
            (identical(other.swatch, swatch) || other.swatch == swatch) &&
            (identical(other.streamedVideo, streamedVideo) ||
                other.streamedVideo == streamedVideo) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, displayName, displayIcon,
      fullRender, swatch, streamedVideo, assetPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChromasImplCopyWith<_$ChromasImpl> get copyWith =>
      __$$ChromasImplCopyWithImpl<_$ChromasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChromasImplToJson(
      this,
    );
  }
}

abstract class _Chromas implements Chromas {
  const factory _Chromas(
      {final String? uuid,
      final String? displayName,
      final String? displayIcon,
      final String? fullRender,
      final String? swatch,
      final String? streamedVideo,
      final String? assetPath}) = _$ChromasImpl;

  factory _Chromas.fromJson(Map<String, dynamic> json) = _$ChromasImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get displayIcon;
  @override
  String? get fullRender;
  @override
  String? get swatch;
  @override
  String? get streamedVideo;
  @override
  String? get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$ChromasImplCopyWith<_$ChromasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Levels _$LevelsFromJson(Map<String, dynamic> json) {
  return _Levels.fromJson(json);
}

/// @nodoc
mixin _$Levels {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get levelItem => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get streamedVideo => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelsCopyWith<Levels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelsCopyWith<$Res> {
  factory $LevelsCopyWith(Levels value, $Res Function(Levels) then) =
      _$LevelsCopyWithImpl<$Res, Levels>;
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? levelItem,
      String? displayIcon,
      String? streamedVideo,
      String? assetPath});
}

/// @nodoc
class _$LevelsCopyWithImpl<$Res, $Val extends Levels>
    implements $LevelsCopyWith<$Res> {
  _$LevelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? levelItem = freezed,
    Object? displayIcon = freezed,
    Object? streamedVideo = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      levelItem: freezed == levelItem
          ? _value.levelItem
          : levelItem // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: freezed == streamedVideo
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelsImplCopyWith<$Res> implements $LevelsCopyWith<$Res> {
  factory _$$LevelsImplCopyWith(
          _$LevelsImpl value, $Res Function(_$LevelsImpl) then) =
      __$$LevelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? levelItem,
      String? displayIcon,
      String? streamedVideo,
      String? assetPath});
}

/// @nodoc
class __$$LevelsImplCopyWithImpl<$Res>
    extends _$LevelsCopyWithImpl<$Res, _$LevelsImpl>
    implements _$$LevelsImplCopyWith<$Res> {
  __$$LevelsImplCopyWithImpl(
      _$LevelsImpl _value, $Res Function(_$LevelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? levelItem = freezed,
    Object? displayIcon = freezed,
    Object? streamedVideo = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$LevelsImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      levelItem: freezed == levelItem
          ? _value.levelItem
          : levelItem // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      streamedVideo: freezed == streamedVideo
          ? _value.streamedVideo
          : streamedVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelsImpl implements _Levels {
  const _$LevelsImpl(
      {this.uuid,
      this.displayName,
      this.levelItem,
      this.displayIcon,
      this.streamedVideo,
      this.assetPath});

  factory _$LevelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelsImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? levelItem;
  @override
  final String? displayIcon;
  @override
  final String? streamedVideo;
  @override
  final String? assetPath;

  @override
  String toString() {
    return 'Levels(uuid: $uuid, displayName: $displayName, levelItem: $levelItem, displayIcon: $displayIcon, streamedVideo: $streamedVideo, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelsImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.levelItem, levelItem) ||
                other.levelItem == levelItem) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.streamedVideo, streamedVideo) ||
                other.streamedVideo == streamedVideo) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, displayName, levelItem,
      displayIcon, streamedVideo, assetPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelsImplCopyWith<_$LevelsImpl> get copyWith =>
      __$$LevelsImplCopyWithImpl<_$LevelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelsImplToJson(
      this,
    );
  }
}

abstract class _Levels implements Levels {
  const factory _Levels(
      {final String? uuid,
      final String? displayName,
      final String? levelItem,
      final String? displayIcon,
      final String? streamedVideo,
      final String? assetPath}) = _$LevelsImpl;

  factory _Levels.fromJson(Map<String, dynamic> json) = _$LevelsImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get levelItem;
  @override
  String? get displayIcon;
  @override
  String? get streamedVideo;
  @override
  String? get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$LevelsImplCopyWith<_$LevelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
