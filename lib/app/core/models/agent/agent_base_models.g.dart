// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_base_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentBaseModelsImpl _$$AgentBaseModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentBaseModelsImpl(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => AgentDataModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AgentBaseModelsImplToJson(
        _$AgentBaseModelsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$AgentDataModelsImpl _$$AgentDataModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentDataModelsImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      developerName: json['developerName'] as String?,
      characterTags: (json['characterTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      displayIcon: json['displayIcon'] as String?,
      displayIconSmall: json['displayIconSmall'] as String?,
      bustPortrait: json['bustPortrait'] as String?,
      fullPortrait: json['fullPortrait'] as String?,
      fullPortraitV2: json['fullPortraitV2'] as String?,
      killfeedPortrait: json['killfeedPortrait'] as String?,
      background: json['background'] as String?,
      backgroundGradientColors:
          (json['backgroundGradientColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      assetPath: json['assetPath'] as String?,
      isFullPortraitRightFacing: json['isFullPortraitRightFacing'] as bool?,
      isPlayableCharacter: json['isPlayableCharacter'] as bool?,
      isAvailableForTest: json['isAvailableForTest'] as bool?,
      isBaseContent: json['isBaseContent'] as bool?,
      role: json['role'] == null
          ? null
          : AgentRoleModels.fromJson(json['role'] as Map<String, dynamic>),
      recruitmentData: json['recruitmentData'] == null
          ? null
          : AgentRecruitmentDataModels.fromJson(
              json['recruitmentData'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => AgentAbilitiesModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AgentDataModelsImplToJson(
        _$AgentDataModelsImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'description': instance.description,
      'developerName': instance.developerName,
      'characterTags': instance.characterTags,
      'displayIcon': instance.displayIcon,
      'displayIconSmall': instance.displayIconSmall,
      'bustPortrait': instance.bustPortrait,
      'fullPortrait': instance.fullPortrait,
      'fullPortraitV2': instance.fullPortraitV2,
      'killfeedPortrait': instance.killfeedPortrait,
      'background': instance.background,
      'backgroundGradientColors': instance.backgroundGradientColors,
      'assetPath': instance.assetPath,
      'isFullPortraitRightFacing': instance.isFullPortraitRightFacing,
      'isPlayableCharacter': instance.isPlayableCharacter,
      'isAvailableForTest': instance.isAvailableForTest,
      'isBaseContent': instance.isBaseContent,
      'role': instance.role,
      'recruitmentData': instance.recruitmentData,
      'abilities': instance.abilities,
    };

_$AgentRoleModelsImpl _$$AgentRoleModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentRoleModelsImpl(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$AgentRoleModelsImplToJson(
        _$AgentRoleModelsImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'description': instance.description,
      'displayIcon': instance.displayIcon,
      'assetPath': instance.assetPath,
    };

_$AgentRecruitmentDataModelsImpl _$$AgentRecruitmentDataModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentRecruitmentDataModelsImpl(
      counterId: json['counterId'] as String?,
      milestoneId: json['milestoneId'] as String?,
      milestoneThreshold: json['milestoneThreshold'] as int?,
      useLevelVpCostOverride: json['useLevelVpCostOverride'] as bool?,
      levelVpCostOverride: json['levelVpCostOverride'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$$AgentRecruitmentDataModelsImplToJson(
        _$AgentRecruitmentDataModelsImpl instance) =>
    <String, dynamic>{
      'counterId': instance.counterId,
      'milestoneId': instance.milestoneId,
      'milestoneThreshold': instance.milestoneThreshold,
      'useLevelVpCostOverride': instance.useLevelVpCostOverride,
      'levelVpCostOverride': instance.levelVpCostOverride,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

_$AgentAbilitiesModelsImpl _$$AgentAbilitiesModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentAbilitiesModelsImpl(
      slot: json['slot'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
    );

Map<String, dynamic> _$$AgentAbilitiesModelsImplToJson(
        _$AgentAbilitiesModelsImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'displayName': instance.displayName,
      'description': instance.description,
      'displayIcon': instance.displayIcon,
    };
