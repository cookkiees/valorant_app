// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$agentServiceHash() => r'a98583f228eb5884e7d3547589db75fde1de5aa4';

/// See also [agentService].
@ProviderFor(agentService)
final agentServiceProvider = AutoDisposeProvider<AgentsService>.internal(
  agentService,
  name: r'agentServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$agentServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AgentServiceRef = AutoDisposeProviderRef<AgentsService>;
String _$agentHash() => r'66bf8a46753ac6ab2ad09047aa5e5594c2d4ce58';

/// See also [agent].
@ProviderFor(agent)
final agentProvider = AutoDisposeFutureProvider<AgentBaseModels>.internal(
  agent,
  name: r'agentProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$agentHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AgentRef = AutoDisposeFutureProviderRef<AgentBaseModels>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
