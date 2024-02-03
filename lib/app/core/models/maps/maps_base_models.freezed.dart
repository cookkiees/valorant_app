// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maps_base_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapsBaseModels _$MapsBaseModelsFromJson(Map<String, dynamic> json) {
  return _MapsBaseModels.fromJson(json);
}

/// @nodoc
mixin _$MapsBaseModels {
  int? get status => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapsBaseModelsCopyWith<MapsBaseModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsBaseModelsCopyWith<$Res> {
  factory $MapsBaseModelsCopyWith(
          MapsBaseModels value, $Res Function(MapsBaseModels) then) =
      _$MapsBaseModelsCopyWithImpl<$Res, MapsBaseModels>;
  @useResult
  $Res call({int? status, List<Data>? data});
}

/// @nodoc
class _$MapsBaseModelsCopyWithImpl<$Res, $Val extends MapsBaseModels>
    implements $MapsBaseModelsCopyWith<$Res> {
  _$MapsBaseModelsCopyWithImpl(this._value, this._then);

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
abstract class _$$MapsBaseModelsImplCopyWith<$Res>
    implements $MapsBaseModelsCopyWith<$Res> {
  factory _$$MapsBaseModelsImplCopyWith(_$MapsBaseModelsImpl value,
          $Res Function(_$MapsBaseModelsImpl) then) =
      __$$MapsBaseModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, List<Data>? data});
}

/// @nodoc
class __$$MapsBaseModelsImplCopyWithImpl<$Res>
    extends _$MapsBaseModelsCopyWithImpl<$Res, _$MapsBaseModelsImpl>
    implements _$$MapsBaseModelsImplCopyWith<$Res> {
  __$$MapsBaseModelsImplCopyWithImpl(
      _$MapsBaseModelsImpl _value, $Res Function(_$MapsBaseModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MapsBaseModelsImpl(
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
class _$MapsBaseModelsImpl implements _MapsBaseModels {
  _$MapsBaseModelsImpl({this.status, final List<Data>? data}) : _data = data;

  factory _$MapsBaseModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapsBaseModelsImplFromJson(json);

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
    return 'MapsBaseModels(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapsBaseModelsImpl &&
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
  _$$MapsBaseModelsImplCopyWith<_$MapsBaseModelsImpl> get copyWith =>
      __$$MapsBaseModelsImplCopyWithImpl<_$MapsBaseModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapsBaseModelsImplToJson(
      this,
    );
  }
}

abstract class _MapsBaseModels implements MapsBaseModels {
  factory _MapsBaseModels({final int? status, final List<Data>? data}) =
      _$MapsBaseModelsImpl;

  factory _MapsBaseModels.fromJson(Map<String, dynamic> json) =
      _$MapsBaseModelsImpl.fromJson;

  @override
  int? get status;
  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MapsBaseModelsImplCopyWith<_$MapsBaseModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get narrativeDescription => throw _privateConstructorUsedError;
  String? get tacticalDescription => throw _privateConstructorUsedError;
  String? get coordinates => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get listViewIcon => throw _privateConstructorUsedError;
  String? get listViewIconTall => throw _privateConstructorUsedError;
  String? get splash => throw _privateConstructorUsedError;
  String? get stylizedBackgroundImage => throw _privateConstructorUsedError;
  String? get premierBackgroundImage => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;
  String? get mapUrl => throw _privateConstructorUsedError;
  double? get xMultiplier => throw _privateConstructorUsedError;
  double? get yMultiplier => throw _privateConstructorUsedError;
  double? get xScalarToAdd => throw _privateConstructorUsedError;
  double? get yScalarToAdd => throw _privateConstructorUsedError;
  List<Callouts>? get callouts => throw _privateConstructorUsedError;

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
      List<Callouts>? callouts});
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
    Object? narrativeDescription = freezed,
    Object? tacticalDescription = freezed,
    Object? coordinates = freezed,
    Object? displayIcon = freezed,
    Object? listViewIcon = freezed,
    Object? listViewIconTall = freezed,
    Object? splash = freezed,
    Object? stylizedBackgroundImage = freezed,
    Object? premierBackgroundImage = freezed,
    Object? assetPath = freezed,
    Object? mapUrl = freezed,
    Object? xMultiplier = freezed,
    Object? yMultiplier = freezed,
    Object? xScalarToAdd = freezed,
    Object? yScalarToAdd = freezed,
    Object? callouts = freezed,
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
      narrativeDescription: freezed == narrativeDescription
          ? _value.narrativeDescription
          : narrativeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      tacticalDescription: freezed == tacticalDescription
          ? _value.tacticalDescription
          : tacticalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      listViewIcon: freezed == listViewIcon
          ? _value.listViewIcon
          : listViewIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      listViewIconTall: freezed == listViewIconTall
          ? _value.listViewIconTall
          : listViewIconTall // ignore: cast_nullable_to_non_nullable
              as String?,
      splash: freezed == splash
          ? _value.splash
          : splash // ignore: cast_nullable_to_non_nullable
              as String?,
      stylizedBackgroundImage: freezed == stylizedBackgroundImage
          ? _value.stylizedBackgroundImage
          : stylizedBackgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      premierBackgroundImage: freezed == premierBackgroundImage
          ? _value.premierBackgroundImage
          : premierBackgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mapUrl: freezed == mapUrl
          ? _value.mapUrl
          : mapUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      xMultiplier: freezed == xMultiplier
          ? _value.xMultiplier
          : xMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      yMultiplier: freezed == yMultiplier
          ? _value.yMultiplier
          : yMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      xScalarToAdd: freezed == xScalarToAdd
          ? _value.xScalarToAdd
          : xScalarToAdd // ignore: cast_nullable_to_non_nullable
              as double?,
      yScalarToAdd: freezed == yScalarToAdd
          ? _value.yScalarToAdd
          : yScalarToAdd // ignore: cast_nullable_to_non_nullable
              as double?,
      callouts: freezed == callouts
          ? _value.callouts
          : callouts // ignore: cast_nullable_to_non_nullable
              as List<Callouts>?,
    ) as $Val);
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
      List<Callouts>? callouts});
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
    Object? narrativeDescription = freezed,
    Object? tacticalDescription = freezed,
    Object? coordinates = freezed,
    Object? displayIcon = freezed,
    Object? listViewIcon = freezed,
    Object? listViewIconTall = freezed,
    Object? splash = freezed,
    Object? stylizedBackgroundImage = freezed,
    Object? premierBackgroundImage = freezed,
    Object? assetPath = freezed,
    Object? mapUrl = freezed,
    Object? xMultiplier = freezed,
    Object? yMultiplier = freezed,
    Object? xScalarToAdd = freezed,
    Object? yScalarToAdd = freezed,
    Object? callouts = freezed,
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
      narrativeDescription: freezed == narrativeDescription
          ? _value.narrativeDescription
          : narrativeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      tacticalDescription: freezed == tacticalDescription
          ? _value.tacticalDescription
          : tacticalDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      listViewIcon: freezed == listViewIcon
          ? _value.listViewIcon
          : listViewIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      listViewIconTall: freezed == listViewIconTall
          ? _value.listViewIconTall
          : listViewIconTall // ignore: cast_nullable_to_non_nullable
              as String?,
      splash: freezed == splash
          ? _value.splash
          : splash // ignore: cast_nullable_to_non_nullable
              as String?,
      stylizedBackgroundImage: freezed == stylizedBackgroundImage
          ? _value.stylizedBackgroundImage
          : stylizedBackgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      premierBackgroundImage: freezed == premierBackgroundImage
          ? _value.premierBackgroundImage
          : premierBackgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mapUrl: freezed == mapUrl
          ? _value.mapUrl
          : mapUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      xMultiplier: freezed == xMultiplier
          ? _value.xMultiplier
          : xMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      yMultiplier: freezed == yMultiplier
          ? _value.yMultiplier
          : yMultiplier // ignore: cast_nullable_to_non_nullable
              as double?,
      xScalarToAdd: freezed == xScalarToAdd
          ? _value.xScalarToAdd
          : xScalarToAdd // ignore: cast_nullable_to_non_nullable
              as double?,
      yScalarToAdd: freezed == yScalarToAdd
          ? _value.yScalarToAdd
          : yScalarToAdd // ignore: cast_nullable_to_non_nullable
              as double?,
      callouts: freezed == callouts
          ? _value._callouts
          : callouts // ignore: cast_nullable_to_non_nullable
              as List<Callouts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {this.uuid,
      this.displayName,
      this.narrativeDescription,
      this.tacticalDescription,
      this.coordinates,
      this.displayIcon,
      this.listViewIcon,
      this.listViewIconTall,
      this.splash,
      this.stylizedBackgroundImage,
      this.premierBackgroundImage,
      this.assetPath,
      this.mapUrl,
      this.xMultiplier,
      this.yMultiplier,
      this.xScalarToAdd,
      this.yScalarToAdd,
      final List<Callouts>? callouts})
      : _callouts = callouts;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? narrativeDescription;
  @override
  final String? tacticalDescription;
  @override
  final String? coordinates;
  @override
  final String? displayIcon;
  @override
  final String? listViewIcon;
  @override
  final String? listViewIconTall;
  @override
  final String? splash;
  @override
  final String? stylizedBackgroundImage;
  @override
  final String? premierBackgroundImage;
  @override
  final String? assetPath;
  @override
  final String? mapUrl;
  @override
  final double? xMultiplier;
  @override
  final double? yMultiplier;
  @override
  final double? xScalarToAdd;
  @override
  final double? yScalarToAdd;
  final List<Callouts>? _callouts;
  @override
  List<Callouts>? get callouts {
    final value = _callouts;
    if (value == null) return null;
    if (_callouts is EqualUnmodifiableListView) return _callouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(uuid: $uuid, displayName: $displayName, narrativeDescription: $narrativeDescription, tacticalDescription: $tacticalDescription, coordinates: $coordinates, displayIcon: $displayIcon, listViewIcon: $listViewIcon, listViewIconTall: $listViewIconTall, splash: $splash, stylizedBackgroundImage: $stylizedBackgroundImage, premierBackgroundImage: $premierBackgroundImage, assetPath: $assetPath, mapUrl: $mapUrl, xMultiplier: $xMultiplier, yMultiplier: $yMultiplier, xScalarToAdd: $xScalarToAdd, yScalarToAdd: $yScalarToAdd, callouts: $callouts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.narrativeDescription, narrativeDescription) ||
                other.narrativeDescription == narrativeDescription) &&
            (identical(other.tacticalDescription, tacticalDescription) ||
                other.tacticalDescription == tacticalDescription) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.listViewIcon, listViewIcon) ||
                other.listViewIcon == listViewIcon) &&
            (identical(other.listViewIconTall, listViewIconTall) ||
                other.listViewIconTall == listViewIconTall) &&
            (identical(other.splash, splash) || other.splash == splash) &&
            (identical(
                    other.stylizedBackgroundImage, stylizedBackgroundImage) ||
                other.stylizedBackgroundImage == stylizedBackgroundImage) &&
            (identical(other.premierBackgroundImage, premierBackgroundImage) ||
                other.premierBackgroundImage == premierBackgroundImage) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl) &&
            (identical(other.xMultiplier, xMultiplier) ||
                other.xMultiplier == xMultiplier) &&
            (identical(other.yMultiplier, yMultiplier) ||
                other.yMultiplier == yMultiplier) &&
            (identical(other.xScalarToAdd, xScalarToAdd) ||
                other.xScalarToAdd == xScalarToAdd) &&
            (identical(other.yScalarToAdd, yScalarToAdd) ||
                other.yScalarToAdd == yScalarToAdd) &&
            const DeepCollectionEquality().equals(other._callouts, _callouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      displayName,
      narrativeDescription,
      tacticalDescription,
      coordinates,
      displayIcon,
      listViewIcon,
      listViewIconTall,
      splash,
      stylizedBackgroundImage,
      premierBackgroundImage,
      assetPath,
      mapUrl,
      xMultiplier,
      yMultiplier,
      xScalarToAdd,
      yScalarToAdd,
      const DeepCollectionEquality().hash(_callouts));

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
  factory _Data(
      {final String? uuid,
      final String? displayName,
      final String? narrativeDescription,
      final String? tacticalDescription,
      final String? coordinates,
      final String? displayIcon,
      final String? listViewIcon,
      final String? listViewIconTall,
      final String? splash,
      final String? stylizedBackgroundImage,
      final String? premierBackgroundImage,
      final String? assetPath,
      final String? mapUrl,
      final double? xMultiplier,
      final double? yMultiplier,
      final double? xScalarToAdd,
      final double? yScalarToAdd,
      final List<Callouts>? callouts}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get narrativeDescription;
  @override
  String? get tacticalDescription;
  @override
  String? get coordinates;
  @override
  String? get displayIcon;
  @override
  String? get listViewIcon;
  @override
  String? get listViewIconTall;
  @override
  String? get splash;
  @override
  String? get stylizedBackgroundImage;
  @override
  String? get premierBackgroundImage;
  @override
  String? get assetPath;
  @override
  String? get mapUrl;
  @override
  double? get xMultiplier;
  @override
  double? get yMultiplier;
  @override
  double? get xScalarToAdd;
  @override
  double? get yScalarToAdd;
  @override
  List<Callouts>? get callouts;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Callouts _$CalloutsFromJson(Map<String, dynamic> json) {
  return _Callouts.fromJson(json);
}

/// @nodoc
mixin _$Callouts {
  String? get regionName => throw _privateConstructorUsedError;
  String? get superRegionName => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalloutsCopyWith<Callouts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalloutsCopyWith<$Res> {
  factory $CalloutsCopyWith(Callouts value, $Res Function(Callouts) then) =
      _$CalloutsCopyWithImpl<$Res, Callouts>;
  @useResult
  $Res call({String? regionName, String? superRegionName, Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$CalloutsCopyWithImpl<$Res, $Val extends Callouts>
    implements $CalloutsCopyWith<$Res> {
  _$CalloutsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionName = freezed,
    Object? superRegionName = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      superRegionName: freezed == superRegionName
          ? _value.superRegionName
          : superRegionName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalloutsImplCopyWith<$Res>
    implements $CalloutsCopyWith<$Res> {
  factory _$$CalloutsImplCopyWith(
          _$CalloutsImpl value, $Res Function(_$CalloutsImpl) then) =
      __$$CalloutsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? regionName, String? superRegionName, Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CalloutsImplCopyWithImpl<$Res>
    extends _$CalloutsCopyWithImpl<$Res, _$CalloutsImpl>
    implements _$$CalloutsImplCopyWith<$Res> {
  __$$CalloutsImplCopyWithImpl(
      _$CalloutsImpl _value, $Res Function(_$CalloutsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionName = freezed,
    Object? superRegionName = freezed,
    Object? location = freezed,
  }) {
    return _then(_$CalloutsImpl(
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      superRegionName: freezed == superRegionName
          ? _value.superRegionName
          : superRegionName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalloutsImpl implements _Callouts {
  _$CalloutsImpl({this.regionName, this.superRegionName, this.location});

  factory _$CalloutsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalloutsImplFromJson(json);

  @override
  final String? regionName;
  @override
  final String? superRegionName;
  @override
  final Location? location;

  @override
  String toString() {
    return 'Callouts(regionName: $regionName, superRegionName: $superRegionName, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalloutsImpl &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.superRegionName, superRegionName) ||
                other.superRegionName == superRegionName) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, regionName, superRegionName, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalloutsImplCopyWith<_$CalloutsImpl> get copyWith =>
      __$$CalloutsImplCopyWithImpl<_$CalloutsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalloutsImplToJson(
      this,
    );
  }
}

abstract class _Callouts implements Callouts {
  factory _Callouts(
      {final String? regionName,
      final String? superRegionName,
      final Location? location}) = _$CalloutsImpl;

  factory _Callouts.fromJson(Map<String, dynamic> json) =
      _$CalloutsImpl.fromJson;

  @override
  String? get regionName;
  @override
  String? get superRegionName;
  @override
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$$CalloutsImplCopyWith<_$CalloutsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double? get x => throw _privateConstructorUsedError;
  double? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({double? x, double? y});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? x, double? y});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$LocationImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  _$LocationImpl({this.x, this.y});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final double? x;
  @override
  final double? y;

  @override
  String toString() {
    return 'Location(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  factory _Location({final double? x, final double? y}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  double? get x;
  @override
  double? get y;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
