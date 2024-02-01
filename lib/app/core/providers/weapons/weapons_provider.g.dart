// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weaponsServiceHash() => r'1723e467228baa00c48e706f06610c5b9fb3bab1';

/// See also [weaponsService].
@ProviderFor(weaponsService)
final weaponsServiceProvider = AutoDisposeProvider<WeaponsService>.internal(
  weaponsService,
  name: r'weaponsServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weaponsServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeaponsServiceRef = AutoDisposeProviderRef<WeaponsService>;
String _$weaponsHash() => r'2d2aaa0efd3572a275a730d7f74dc7e414f22c11';

/// See also [weapons].
@ProviderFor(weapons)
final weaponsProvider = AutoDisposeFutureProvider<WeaponsBaseModels>.internal(
  weapons,
  name: r'weaponsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$weaponsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeaponsRef = AutoDisposeFutureProviderRef<WeaponsBaseModels>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
