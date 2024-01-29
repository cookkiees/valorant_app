// Importing the freezed_annotation package
import 'package:freezed_annotation/freezed_annotation.dart';
part 'agent_base_models.freezed.dart';
part 'agent_base_models.g.dart';

// Using the @freezed annotation to generate code for immutable classes
@freezed
class AgentBaseModels with _$AgentBaseModels {
  // Status and list of AgentDataModels
  const factory AgentBaseModels({
    required int status,
    required List<AgentDataModels> data,
  }) = _AgentBaseModels;

  // Named constructor for creating an instance from JSON
  factory AgentBaseModels.fromJson(Map<String, dynamic> json) =>
      _$AgentBaseModelsFromJson(json);
}

// @freezed annotation for AgentDataModels
@freezed
class AgentDataModels with _$AgentDataModels {
  // Various properties of an agent
  const factory AgentDataModels({
    String? uuid,
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
    List<AgentAbilitiesModels>? abilities,
  }) = _AgentDataModels;

  // Named constructor for creating an instance from JSON
  factory AgentDataModels.fromJson(Map<String, dynamic> json) =>
      _$AgentDataModelsFromJson(json);
}

// @freezed annotation for AgentRoleModels
@freezed
class AgentRoleModels with _$AgentRoleModels {
  // Properties of an agent's role
  const factory AgentRoleModels({
    String? uuid,
    String? displayName,
    String? description,
    String? displayIcon,
    String? assetPath,
  }) = _AgentRoleModels;

  // Named constructor for creating an instance from JSON
  factory AgentRoleModels.fromJson(Map<String, dynamic> json) =>
      _$AgentRoleModelsFromJson(json);
}

// @freezed annotation for AgentRecruitmentDataModels
@freezed
class AgentRecruitmentDataModels with _$AgentRecruitmentDataModels {
  // Properties of agent recruitment data
  const factory AgentRecruitmentDataModels({
    String? counterId,
    String? milestoneId,
    int? milestoneThreshold,
    bool? useLevelVpCostOverride,
    int? levelVpCostOverride,
    String? startDate,
    String? endDate,
  }) = _AgentRecruitmentDataModels;

  // Named constructor for creating an instance from JSON
  factory AgentRecruitmentDataModels.fromJson(Map<String, dynamic> json) =>
      _$AgentRecruitmentDataModelsFromJson(json);
}

// @freezed annotation for AgentAbilitiesModels
@freezed
class AgentAbilitiesModels with _$AgentAbilitiesModels {
  // Properties of agent abilities
  const factory AgentAbilitiesModels({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) = _AgentAbilitiesModels;

  // Named constructor for creating an instance from JSON
  factory AgentAbilitiesModels.fromJson(Map<String, dynamic> json) =>
      _$AgentAbilitiesModelsFromJson(json);
}
