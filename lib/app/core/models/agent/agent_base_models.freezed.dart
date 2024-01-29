// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_base_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentBaseModels _$AgentBaseModelsFromJson(Map<String, dynamic> json) {
  return _AgentBaseModels.fromJson(json);
}

/// @nodoc
mixin _$AgentBaseModels {
  int get status => throw _privateConstructorUsedError;
  List<AgentDataModels> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentBaseModelsCopyWith<AgentBaseModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentBaseModelsCopyWith<$Res> {
  factory $AgentBaseModelsCopyWith(
          AgentBaseModels value, $Res Function(AgentBaseModels) then) =
      _$AgentBaseModelsCopyWithImpl<$Res, AgentBaseModels>;
  @useResult
  $Res call({int status, List<AgentDataModels> data});
}

/// @nodoc
class _$AgentBaseModelsCopyWithImpl<$Res, $Val extends AgentBaseModels>
    implements $AgentBaseModelsCopyWith<$Res> {
  _$AgentBaseModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AgentDataModels>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentBaseModelsImplCopyWith<$Res>
    implements $AgentBaseModelsCopyWith<$Res> {
  factory _$$AgentBaseModelsImplCopyWith(_$AgentBaseModelsImpl value,
          $Res Function(_$AgentBaseModelsImpl) then) =
      __$$AgentBaseModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, List<AgentDataModels> data});
}

/// @nodoc
class __$$AgentBaseModelsImplCopyWithImpl<$Res>
    extends _$AgentBaseModelsCopyWithImpl<$Res, _$AgentBaseModelsImpl>
    implements _$$AgentBaseModelsImplCopyWith<$Res> {
  __$$AgentBaseModelsImplCopyWithImpl(
      _$AgentBaseModelsImpl _value, $Res Function(_$AgentBaseModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$AgentBaseModelsImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AgentDataModels>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentBaseModelsImpl implements _AgentBaseModels {
  const _$AgentBaseModelsImpl(
      {required this.status, required final List<AgentDataModels> data})
      : _data = data;

  factory _$AgentBaseModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentBaseModelsImplFromJson(json);

  @override
  final int status;
  final List<AgentDataModels> _data;
  @override
  List<AgentDataModels> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AgentBaseModels(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentBaseModelsImpl &&
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
  _$$AgentBaseModelsImplCopyWith<_$AgentBaseModelsImpl> get copyWith =>
      __$$AgentBaseModelsImplCopyWithImpl<_$AgentBaseModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentBaseModelsImplToJson(
      this,
    );
  }
}

abstract class _AgentBaseModels implements AgentBaseModels {
  const factory _AgentBaseModels(
      {required final int status,
      required final List<AgentDataModels> data}) = _$AgentBaseModelsImpl;

  factory _AgentBaseModels.fromJson(Map<String, dynamic> json) =
      _$AgentBaseModelsImpl.fromJson;

  @override
  int get status;
  @override
  List<AgentDataModels> get data;
  @override
  @JsonKey(ignore: true)
  _$$AgentBaseModelsImplCopyWith<_$AgentBaseModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgentDataModels _$AgentDataModelsFromJson(Map<String, dynamic> json) {
  return _AgentDataModels.fromJson(json);
}

/// @nodoc
mixin _$AgentDataModels {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get developerName => throw _privateConstructorUsedError;
  List<String>? get characterTags => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get displayIconSmall => throw _privateConstructorUsedError;
  String? get bustPortrait => throw _privateConstructorUsedError;
  String? get fullPortrait => throw _privateConstructorUsedError;
  String? get fullPortraitV2 => throw _privateConstructorUsedError;
  String? get killfeedPortrait => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  List<String>? get backgroundGradientColors =>
      throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;
  bool? get isFullPortraitRightFacing => throw _privateConstructorUsedError;
  bool? get isPlayableCharacter => throw _privateConstructorUsedError;
  bool? get isAvailableForTest => throw _privateConstructorUsedError;
  bool? get isBaseContent => throw _privateConstructorUsedError;
  AgentRoleModels? get role => throw _privateConstructorUsedError;
  AgentRecruitmentDataModels? get recruitmentData =>
      throw _privateConstructorUsedError;
  List<AgentAbilitiesModels>? get abilities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentDataModelsCopyWith<AgentDataModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentDataModelsCopyWith<$Res> {
  factory $AgentDataModelsCopyWith(
          AgentDataModels value, $Res Function(AgentDataModels) then) =
      _$AgentDataModelsCopyWithImpl<$Res, AgentDataModels>;
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? description,
      String? developerName,
      List<String>? characterTags,
      String? displayIcon,
      String? displayIconSmall,
      String? bustPortrait,
      String? fullPortrait,
      String? fullPortraitV2,
      String? killfeedPortrait,
      String? background,
      List<String>? backgroundGradientColors,
      String? assetPath,
      bool? isFullPortraitRightFacing,
      bool? isPlayableCharacter,
      bool? isAvailableForTest,
      bool? isBaseContent,
      AgentRoleModels? role,
      AgentRecruitmentDataModels? recruitmentData,
      List<AgentAbilitiesModels>? abilities});

  $AgentRoleModelsCopyWith<$Res>? get role;
  $AgentRecruitmentDataModelsCopyWith<$Res>? get recruitmentData;
}

/// @nodoc
class _$AgentDataModelsCopyWithImpl<$Res, $Val extends AgentDataModels>
    implements $AgentDataModelsCopyWith<$Res> {
  _$AgentDataModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? developerName = freezed,
    Object? characterTags = freezed,
    Object? displayIcon = freezed,
    Object? displayIconSmall = freezed,
    Object? bustPortrait = freezed,
    Object? fullPortrait = freezed,
    Object? fullPortraitV2 = freezed,
    Object? killfeedPortrait = freezed,
    Object? background = freezed,
    Object? backgroundGradientColors = freezed,
    Object? assetPath = freezed,
    Object? isFullPortraitRightFacing = freezed,
    Object? isPlayableCharacter = freezed,
    Object? isAvailableForTest = freezed,
    Object? isBaseContent = freezed,
    Object? role = freezed,
    Object? recruitmentData = freezed,
    Object? abilities = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      developerName: freezed == developerName
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String?,
      characterTags: freezed == characterTags
          ? _value.characterTags
          : characterTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIconSmall: freezed == displayIconSmall
          ? _value.displayIconSmall
          : displayIconSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      bustPortrait: freezed == bustPortrait
          ? _value.bustPortrait
          : bustPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortrait: freezed == fullPortrait
          ? _value.fullPortrait
          : fullPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortraitV2: freezed == fullPortraitV2
          ? _value.fullPortraitV2
          : fullPortraitV2 // ignore: cast_nullable_to_non_nullable
              as String?,
      killfeedPortrait: freezed == killfeedPortrait
          ? _value.killfeedPortrait
          : killfeedPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundGradientColors: freezed == backgroundGradientColors
          ? _value.backgroundGradientColors
          : backgroundGradientColors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isFullPortraitRightFacing: freezed == isFullPortraitRightFacing
          ? _value.isFullPortraitRightFacing
          : isFullPortraitRightFacing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlayableCharacter: freezed == isPlayableCharacter
          ? _value.isPlayableCharacter
          : isPlayableCharacter // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForTest: freezed == isAvailableForTest
          ? _value.isAvailableForTest
          : isAvailableForTest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBaseContent: freezed == isBaseContent
          ? _value.isBaseContent
          : isBaseContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AgentRoleModels?,
      recruitmentData: freezed == recruitmentData
          ? _value.recruitmentData
          : recruitmentData // ignore: cast_nullable_to_non_nullable
              as AgentRecruitmentDataModels?,
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AgentAbilitiesModels>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentRoleModelsCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $AgentRoleModelsCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentRecruitmentDataModelsCopyWith<$Res>? get recruitmentData {
    if (_value.recruitmentData == null) {
      return null;
    }

    return $AgentRecruitmentDataModelsCopyWith<$Res>(_value.recruitmentData!,
        (value) {
      return _then(_value.copyWith(recruitmentData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentDataModelsImplCopyWith<$Res>
    implements $AgentDataModelsCopyWith<$Res> {
  factory _$$AgentDataModelsImplCopyWith(_$AgentDataModelsImpl value,
          $Res Function(_$AgentDataModelsImpl) then) =
      __$$AgentDataModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? description,
      String? developerName,
      List<String>? characterTags,
      String? displayIcon,
      String? displayIconSmall,
      String? bustPortrait,
      String? fullPortrait,
      String? fullPortraitV2,
      String? killfeedPortrait,
      String? background,
      List<String>? backgroundGradientColors,
      String? assetPath,
      bool? isFullPortraitRightFacing,
      bool? isPlayableCharacter,
      bool? isAvailableForTest,
      bool? isBaseContent,
      AgentRoleModels? role,
      AgentRecruitmentDataModels? recruitmentData,
      List<AgentAbilitiesModels>? abilities});

  @override
  $AgentRoleModelsCopyWith<$Res>? get role;
  @override
  $AgentRecruitmentDataModelsCopyWith<$Res>? get recruitmentData;
}

/// @nodoc
class __$$AgentDataModelsImplCopyWithImpl<$Res>
    extends _$AgentDataModelsCopyWithImpl<$Res, _$AgentDataModelsImpl>
    implements _$$AgentDataModelsImplCopyWith<$Res> {
  __$$AgentDataModelsImplCopyWithImpl(
      _$AgentDataModelsImpl _value, $Res Function(_$AgentDataModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? developerName = freezed,
    Object? characterTags = freezed,
    Object? displayIcon = freezed,
    Object? displayIconSmall = freezed,
    Object? bustPortrait = freezed,
    Object? fullPortrait = freezed,
    Object? fullPortraitV2 = freezed,
    Object? killfeedPortrait = freezed,
    Object? background = freezed,
    Object? backgroundGradientColors = freezed,
    Object? assetPath = freezed,
    Object? isFullPortraitRightFacing = freezed,
    Object? isPlayableCharacter = freezed,
    Object? isAvailableForTest = freezed,
    Object? isBaseContent = freezed,
    Object? role = freezed,
    Object? recruitmentData = freezed,
    Object? abilities = freezed,
  }) {
    return _then(_$AgentDataModelsImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      developerName: freezed == developerName
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String?,
      characterTags: freezed == characterTags
          ? _value._characterTags
          : characterTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIconSmall: freezed == displayIconSmall
          ? _value.displayIconSmall
          : displayIconSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      bustPortrait: freezed == bustPortrait
          ? _value.bustPortrait
          : bustPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortrait: freezed == fullPortrait
          ? _value.fullPortrait
          : fullPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortraitV2: freezed == fullPortraitV2
          ? _value.fullPortraitV2
          : fullPortraitV2 // ignore: cast_nullable_to_non_nullable
              as String?,
      killfeedPortrait: freezed == killfeedPortrait
          ? _value.killfeedPortrait
          : killfeedPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundGradientColors: freezed == backgroundGradientColors
          ? _value._backgroundGradientColors
          : backgroundGradientColors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isFullPortraitRightFacing: freezed == isFullPortraitRightFacing
          ? _value.isFullPortraitRightFacing
          : isFullPortraitRightFacing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlayableCharacter: freezed == isPlayableCharacter
          ? _value.isPlayableCharacter
          : isPlayableCharacter // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForTest: freezed == isAvailableForTest
          ? _value.isAvailableForTest
          : isAvailableForTest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBaseContent: freezed == isBaseContent
          ? _value.isBaseContent
          : isBaseContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as AgentRoleModels?,
      recruitmentData: freezed == recruitmentData
          ? _value.recruitmentData
          : recruitmentData // ignore: cast_nullable_to_non_nullable
              as AgentRecruitmentDataModels?,
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AgentAbilitiesModels>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentDataModelsImpl implements _AgentDataModels {
  const _$AgentDataModelsImpl(
      {this.uuid,
      this.displayName,
      this.description,
      this.developerName,
      final List<String>? characterTags,
      this.displayIcon,
      this.displayIconSmall,
      this.bustPortrait,
      this.fullPortrait,
      this.fullPortraitV2,
      this.killfeedPortrait,
      this.background,
      final List<String>? backgroundGradientColors,
      this.assetPath,
      this.isFullPortraitRightFacing,
      this.isPlayableCharacter,
      this.isAvailableForTest,
      this.isBaseContent,
      this.role,
      this.recruitmentData,
      final List<AgentAbilitiesModels>? abilities})
      : _characterTags = characterTags,
        _backgroundGradientColors = backgroundGradientColors,
        _abilities = abilities;

  factory _$AgentDataModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentDataModelsImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final String? developerName;
  final List<String>? _characterTags;
  @override
  List<String>? get characterTags {
    final value = _characterTags;
    if (value == null) return null;
    if (_characterTags is EqualUnmodifiableListView) return _characterTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? displayIcon;
  @override
  final String? displayIconSmall;
  @override
  final String? bustPortrait;
  @override
  final String? fullPortrait;
  @override
  final String? fullPortraitV2;
  @override
  final String? killfeedPortrait;
  @override
  final String? background;
  final List<String>? _backgroundGradientColors;
  @override
  List<String>? get backgroundGradientColors {
    final value = _backgroundGradientColors;
    if (value == null) return null;
    if (_backgroundGradientColors is EqualUnmodifiableListView)
      return _backgroundGradientColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? assetPath;
  @override
  final bool? isFullPortraitRightFacing;
  @override
  final bool? isPlayableCharacter;
  @override
  final bool? isAvailableForTest;
  @override
  final bool? isBaseContent;
  @override
  final AgentRoleModels? role;
  @override
  final AgentRecruitmentDataModels? recruitmentData;
  final List<AgentAbilitiesModels>? _abilities;
  @override
  List<AgentAbilitiesModels>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AgentDataModels(uuid: $uuid, displayName: $displayName, description: $description, developerName: $developerName, characterTags: $characterTags, displayIcon: $displayIcon, displayIconSmall: $displayIconSmall, bustPortrait: $bustPortrait, fullPortrait: $fullPortrait, fullPortraitV2: $fullPortraitV2, killfeedPortrait: $killfeedPortrait, background: $background, backgroundGradientColors: $backgroundGradientColors, assetPath: $assetPath, isFullPortraitRightFacing: $isFullPortraitRightFacing, isPlayableCharacter: $isPlayableCharacter, isAvailableForTest: $isAvailableForTest, isBaseContent: $isBaseContent, role: $role, recruitmentData: $recruitmentData, abilities: $abilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentDataModelsImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.developerName, developerName) ||
                other.developerName == developerName) &&
            const DeepCollectionEquality()
                .equals(other._characterTags, _characterTags) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.displayIconSmall, displayIconSmall) ||
                other.displayIconSmall == displayIconSmall) &&
            (identical(other.bustPortrait, bustPortrait) ||
                other.bustPortrait == bustPortrait) &&
            (identical(other.fullPortrait, fullPortrait) ||
                other.fullPortrait == fullPortrait) &&
            (identical(other.fullPortraitV2, fullPortraitV2) ||
                other.fullPortraitV2 == fullPortraitV2) &&
            (identical(other.killfeedPortrait, killfeedPortrait) ||
                other.killfeedPortrait == killfeedPortrait) &&
            (identical(other.background, background) ||
                other.background == background) &&
            const DeepCollectionEquality().equals(
                other._backgroundGradientColors, _backgroundGradientColors) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.isFullPortraitRightFacing,
                    isFullPortraitRightFacing) ||
                other.isFullPortraitRightFacing == isFullPortraitRightFacing) &&
            (identical(other.isPlayableCharacter, isPlayableCharacter) ||
                other.isPlayableCharacter == isPlayableCharacter) &&
            (identical(other.isAvailableForTest, isAvailableForTest) ||
                other.isAvailableForTest == isAvailableForTest) &&
            (identical(other.isBaseContent, isBaseContent) ||
                other.isBaseContent == isBaseContent) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.recruitmentData, recruitmentData) ||
                other.recruitmentData == recruitmentData) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uuid,
        displayName,
        description,
        developerName,
        const DeepCollectionEquality().hash(_characterTags),
        displayIcon,
        displayIconSmall,
        bustPortrait,
        fullPortrait,
        fullPortraitV2,
        killfeedPortrait,
        background,
        const DeepCollectionEquality().hash(_backgroundGradientColors),
        assetPath,
        isFullPortraitRightFacing,
        isPlayableCharacter,
        isAvailableForTest,
        isBaseContent,
        role,
        recruitmentData,
        const DeepCollectionEquality().hash(_abilities)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentDataModelsImplCopyWith<_$AgentDataModelsImpl> get copyWith =>
      __$$AgentDataModelsImplCopyWithImpl<_$AgentDataModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentDataModelsImplToJson(
      this,
    );
  }
}

abstract class _AgentDataModels implements AgentDataModels {
  const factory _AgentDataModels(
      {final String? uuid,
      final String? displayName,
      final String? description,
      final String? developerName,
      final List<String>? characterTags,
      final String? displayIcon,
      final String? displayIconSmall,
      final String? bustPortrait,
      final String? fullPortrait,
      final String? fullPortraitV2,
      final String? killfeedPortrait,
      final String? background,
      final List<String>? backgroundGradientColors,
      final String? assetPath,
      final bool? isFullPortraitRightFacing,
      final bool? isPlayableCharacter,
      final bool? isAvailableForTest,
      final bool? isBaseContent,
      final AgentRoleModels? role,
      final AgentRecruitmentDataModels? recruitmentData,
      final List<AgentAbilitiesModels>? abilities}) = _$AgentDataModelsImpl;

  factory _AgentDataModels.fromJson(Map<String, dynamic> json) =
      _$AgentDataModelsImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get description;
  @override
  String? get developerName;
  @override
  List<String>? get characterTags;
  @override
  String? get displayIcon;
  @override
  String? get displayIconSmall;
  @override
  String? get bustPortrait;
  @override
  String? get fullPortrait;
  @override
  String? get fullPortraitV2;
  @override
  String? get killfeedPortrait;
  @override
  String? get background;
  @override
  List<String>? get backgroundGradientColors;
  @override
  String? get assetPath;
  @override
  bool? get isFullPortraitRightFacing;
  @override
  bool? get isPlayableCharacter;
  @override
  bool? get isAvailableForTest;
  @override
  bool? get isBaseContent;
  @override
  AgentRoleModels? get role;
  @override
  AgentRecruitmentDataModels? get recruitmentData;
  @override
  List<AgentAbilitiesModels>? get abilities;
  @override
  @JsonKey(ignore: true)
  _$$AgentDataModelsImplCopyWith<_$AgentDataModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgentRoleModels _$AgentRoleModelsFromJson(Map<String, dynamic> json) {
  return _AgentRoleModels.fromJson(json);
}

/// @nodoc
mixin _$AgentRoleModels {
  String? get uuid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;
  String? get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentRoleModelsCopyWith<AgentRoleModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentRoleModelsCopyWith<$Res> {
  factory $AgentRoleModelsCopyWith(
          AgentRoleModels value, $Res Function(AgentRoleModels) then) =
      _$AgentRoleModelsCopyWithImpl<$Res, AgentRoleModels>;
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? description,
      String? displayIcon,
      String? assetPath});
}

/// @nodoc
class _$AgentRoleModelsCopyWithImpl<$Res, $Val extends AgentRoleModels>
    implements $AgentRoleModelsCopyWith<$Res> {
  _$AgentRoleModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentRoleModelsImplCopyWith<$Res>
    implements $AgentRoleModelsCopyWith<$Res> {
  factory _$$AgentRoleModelsImplCopyWith(_$AgentRoleModelsImpl value,
          $Res Function(_$AgentRoleModelsImpl) then) =
      __$$AgentRoleModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? displayName,
      String? description,
      String? displayIcon,
      String? assetPath});
}

/// @nodoc
class __$$AgentRoleModelsImplCopyWithImpl<$Res>
    extends _$AgentRoleModelsCopyWithImpl<$Res, _$AgentRoleModelsImpl>
    implements _$$AgentRoleModelsImplCopyWith<$Res> {
  __$$AgentRoleModelsImplCopyWithImpl(
      _$AgentRoleModelsImpl _value, $Res Function(_$AgentRoleModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$AgentRoleModelsImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
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
class _$AgentRoleModelsImpl implements _AgentRoleModels {
  const _$AgentRoleModelsImpl(
      {this.uuid,
      this.displayName,
      this.description,
      this.displayIcon,
      this.assetPath});

  factory _$AgentRoleModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentRoleModelsImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final String? displayIcon;
  @override
  final String? assetPath;

  @override
  String toString() {
    return 'AgentRoleModels(uuid: $uuid, displayName: $displayName, description: $description, displayIcon: $displayIcon, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentRoleModelsImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, displayName, description, displayIcon, assetPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentRoleModelsImplCopyWith<_$AgentRoleModelsImpl> get copyWith =>
      __$$AgentRoleModelsImplCopyWithImpl<_$AgentRoleModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentRoleModelsImplToJson(
      this,
    );
  }
}

abstract class _AgentRoleModels implements AgentRoleModels {
  const factory _AgentRoleModels(
      {final String? uuid,
      final String? displayName,
      final String? description,
      final String? displayIcon,
      final String? assetPath}) = _$AgentRoleModelsImpl;

  factory _AgentRoleModels.fromJson(Map<String, dynamic> json) =
      _$AgentRoleModelsImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get displayName;
  @override
  String? get description;
  @override
  String? get displayIcon;
  @override
  String? get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$AgentRoleModelsImplCopyWith<_$AgentRoleModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgentRecruitmentDataModels _$AgentRecruitmentDataModelsFromJson(
    Map<String, dynamic> json) {
  return _AgentRecruitmentDataModels.fromJson(json);
}

/// @nodoc
mixin _$AgentRecruitmentDataModels {
  String? get counterId => throw _privateConstructorUsedError;
  String? get milestoneId => throw _privateConstructorUsedError;
  int? get milestoneThreshold => throw _privateConstructorUsedError;
  bool? get useLevelVpCostOverride => throw _privateConstructorUsedError;
  int? get levelVpCostOverride => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentRecruitmentDataModelsCopyWith<AgentRecruitmentDataModels>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentRecruitmentDataModelsCopyWith<$Res> {
  factory $AgentRecruitmentDataModelsCopyWith(AgentRecruitmentDataModels value,
          $Res Function(AgentRecruitmentDataModels) then) =
      _$AgentRecruitmentDataModelsCopyWithImpl<$Res,
          AgentRecruitmentDataModels>;
  @useResult
  $Res call(
      {String? counterId,
      String? milestoneId,
      int? milestoneThreshold,
      bool? useLevelVpCostOverride,
      int? levelVpCostOverride,
      String? startDate,
      String? endDate});
}

/// @nodoc
class _$AgentRecruitmentDataModelsCopyWithImpl<$Res,
        $Val extends AgentRecruitmentDataModels>
    implements $AgentRecruitmentDataModelsCopyWith<$Res> {
  _$AgentRecruitmentDataModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterId = freezed,
    Object? milestoneId = freezed,
    Object? milestoneThreshold = freezed,
    Object? useLevelVpCostOverride = freezed,
    Object? levelVpCostOverride = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      milestoneId: freezed == milestoneId
          ? _value.milestoneId
          : milestoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      milestoneThreshold: freezed == milestoneThreshold
          ? _value.milestoneThreshold
          : milestoneThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      useLevelVpCostOverride: freezed == useLevelVpCostOverride
          ? _value.useLevelVpCostOverride
          : useLevelVpCostOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      levelVpCostOverride: freezed == levelVpCostOverride
          ? _value.levelVpCostOverride
          : levelVpCostOverride // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentRecruitmentDataModelsImplCopyWith<$Res>
    implements $AgentRecruitmentDataModelsCopyWith<$Res> {
  factory _$$AgentRecruitmentDataModelsImplCopyWith(
          _$AgentRecruitmentDataModelsImpl value,
          $Res Function(_$AgentRecruitmentDataModelsImpl) then) =
      __$$AgentRecruitmentDataModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? counterId,
      String? milestoneId,
      int? milestoneThreshold,
      bool? useLevelVpCostOverride,
      int? levelVpCostOverride,
      String? startDate,
      String? endDate});
}

/// @nodoc
class __$$AgentRecruitmentDataModelsImplCopyWithImpl<$Res>
    extends _$AgentRecruitmentDataModelsCopyWithImpl<$Res,
        _$AgentRecruitmentDataModelsImpl>
    implements _$$AgentRecruitmentDataModelsImplCopyWith<$Res> {
  __$$AgentRecruitmentDataModelsImplCopyWithImpl(
      _$AgentRecruitmentDataModelsImpl _value,
      $Res Function(_$AgentRecruitmentDataModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterId = freezed,
    Object? milestoneId = freezed,
    Object? milestoneThreshold = freezed,
    Object? useLevelVpCostOverride = freezed,
    Object? levelVpCostOverride = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$AgentRecruitmentDataModelsImpl(
      counterId: freezed == counterId
          ? _value.counterId
          : counterId // ignore: cast_nullable_to_non_nullable
              as String?,
      milestoneId: freezed == milestoneId
          ? _value.milestoneId
          : milestoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      milestoneThreshold: freezed == milestoneThreshold
          ? _value.milestoneThreshold
          : milestoneThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      useLevelVpCostOverride: freezed == useLevelVpCostOverride
          ? _value.useLevelVpCostOverride
          : useLevelVpCostOverride // ignore: cast_nullable_to_non_nullable
              as bool?,
      levelVpCostOverride: freezed == levelVpCostOverride
          ? _value.levelVpCostOverride
          : levelVpCostOverride // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentRecruitmentDataModelsImpl implements _AgentRecruitmentDataModels {
  const _$AgentRecruitmentDataModelsImpl(
      {this.counterId,
      this.milestoneId,
      this.milestoneThreshold,
      this.useLevelVpCostOverride,
      this.levelVpCostOverride,
      this.startDate,
      this.endDate});

  factory _$AgentRecruitmentDataModelsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgentRecruitmentDataModelsImplFromJson(json);

  @override
  final String? counterId;
  @override
  final String? milestoneId;
  @override
  final int? milestoneThreshold;
  @override
  final bool? useLevelVpCostOverride;
  @override
  final int? levelVpCostOverride;
  @override
  final String? startDate;
  @override
  final String? endDate;

  @override
  String toString() {
    return 'AgentRecruitmentDataModels(counterId: $counterId, milestoneId: $milestoneId, milestoneThreshold: $milestoneThreshold, useLevelVpCostOverride: $useLevelVpCostOverride, levelVpCostOverride: $levelVpCostOverride, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentRecruitmentDataModelsImpl &&
            (identical(other.counterId, counterId) ||
                other.counterId == counterId) &&
            (identical(other.milestoneId, milestoneId) ||
                other.milestoneId == milestoneId) &&
            (identical(other.milestoneThreshold, milestoneThreshold) ||
                other.milestoneThreshold == milestoneThreshold) &&
            (identical(other.useLevelVpCostOverride, useLevelVpCostOverride) ||
                other.useLevelVpCostOverride == useLevelVpCostOverride) &&
            (identical(other.levelVpCostOverride, levelVpCostOverride) ||
                other.levelVpCostOverride == levelVpCostOverride) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      counterId,
      milestoneId,
      milestoneThreshold,
      useLevelVpCostOverride,
      levelVpCostOverride,
      startDate,
      endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentRecruitmentDataModelsImplCopyWith<_$AgentRecruitmentDataModelsImpl>
      get copyWith => __$$AgentRecruitmentDataModelsImplCopyWithImpl<
          _$AgentRecruitmentDataModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentRecruitmentDataModelsImplToJson(
      this,
    );
  }
}

abstract class _AgentRecruitmentDataModels
    implements AgentRecruitmentDataModels {
  const factory _AgentRecruitmentDataModels(
      {final String? counterId,
      final String? milestoneId,
      final int? milestoneThreshold,
      final bool? useLevelVpCostOverride,
      final int? levelVpCostOverride,
      final String? startDate,
      final String? endDate}) = _$AgentRecruitmentDataModelsImpl;

  factory _AgentRecruitmentDataModels.fromJson(Map<String, dynamic> json) =
      _$AgentRecruitmentDataModelsImpl.fromJson;

  @override
  String? get counterId;
  @override
  String? get milestoneId;
  @override
  int? get milestoneThreshold;
  @override
  bool? get useLevelVpCostOverride;
  @override
  int? get levelVpCostOverride;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$AgentRecruitmentDataModelsImplCopyWith<_$AgentRecruitmentDataModelsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgentAbilitiesModels _$AgentAbilitiesModelsFromJson(Map<String, dynamic> json) {
  return _AgentAbilitiesModels.fromJson(json);
}

/// @nodoc
mixin _$AgentAbilitiesModels {
  String? get slot => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get displayIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentAbilitiesModelsCopyWith<AgentAbilitiesModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentAbilitiesModelsCopyWith<$Res> {
  factory $AgentAbilitiesModelsCopyWith(AgentAbilitiesModels value,
          $Res Function(AgentAbilitiesModels) then) =
      _$AgentAbilitiesModelsCopyWithImpl<$Res, AgentAbilitiesModels>;
  @useResult
  $Res call(
      {String? slot,
      String? displayName,
      String? description,
      String? displayIcon});
}

/// @nodoc
class _$AgentAbilitiesModelsCopyWithImpl<$Res,
        $Val extends AgentAbilitiesModels>
    implements $AgentAbilitiesModelsCopyWith<$Res> {
  _$AgentAbilitiesModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_value.copyWith(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentAbilitiesModelsImplCopyWith<$Res>
    implements $AgentAbilitiesModelsCopyWith<$Res> {
  factory _$$AgentAbilitiesModelsImplCopyWith(_$AgentAbilitiesModelsImpl value,
          $Res Function(_$AgentAbilitiesModelsImpl) then) =
      __$$AgentAbilitiesModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? slot,
      String? displayName,
      String? description,
      String? displayIcon});
}

/// @nodoc
class __$$AgentAbilitiesModelsImplCopyWithImpl<$Res>
    extends _$AgentAbilitiesModelsCopyWithImpl<$Res, _$AgentAbilitiesModelsImpl>
    implements _$$AgentAbilitiesModelsImplCopyWith<$Res> {
  __$$AgentAbilitiesModelsImplCopyWithImpl(_$AgentAbilitiesModelsImpl _value,
      $Res Function(_$AgentAbilitiesModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_$AgentAbilitiesModelsImpl(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentAbilitiesModelsImpl implements _AgentAbilitiesModels {
  const _$AgentAbilitiesModelsImpl(
      {this.slot, this.displayName, this.description, this.displayIcon});

  factory _$AgentAbilitiesModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentAbilitiesModelsImplFromJson(json);

  @override
  final String? slot;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final String? displayIcon;

  @override
  String toString() {
    return 'AgentAbilitiesModels(slot: $slot, displayName: $displayName, description: $description, displayIcon: $displayIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentAbilitiesModelsImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, slot, displayName, description, displayIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentAbilitiesModelsImplCopyWith<_$AgentAbilitiesModelsImpl>
      get copyWith =>
          __$$AgentAbilitiesModelsImplCopyWithImpl<_$AgentAbilitiesModelsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentAbilitiesModelsImplToJson(
      this,
    );
  }
}

abstract class _AgentAbilitiesModels implements AgentAbilitiesModels {
  const factory _AgentAbilitiesModels(
      {final String? slot,
      final String? displayName,
      final String? description,
      final String? displayIcon}) = _$AgentAbilitiesModelsImpl;

  factory _AgentAbilitiesModels.fromJson(Map<String, dynamic> json) =
      _$AgentAbilitiesModelsImpl.fromJson;

  @override
  String? get slot;
  @override
  String? get displayName;
  @override
  String? get description;
  @override
  String? get displayIcon;
  @override
  @JsonKey(ignore: true)
  _$$AgentAbilitiesModelsImplCopyWith<_$AgentAbilitiesModelsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
