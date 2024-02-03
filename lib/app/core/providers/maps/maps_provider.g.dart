// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapsServiceHash() => r'15052766957e002e02f16d7960e5a486721118b9';

/// See also [mapsService].
@ProviderFor(mapsService)
final mapsServiceProvider = AutoDisposeProvider<MapsService>.internal(
  mapsService,
  name: r'mapsServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mapsServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MapsServiceRef = AutoDisposeProviderRef<MapsService>;
String _$mapsHash() => r'21d70d7555ea0ff2c45353d82bfb7bf1b195b16b';

/// See also [maps].
@ProviderFor(maps)
final mapsProvider = AutoDisposeFutureProvider<MapsBaseModels>.internal(
  maps,
  name: r'mapsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mapsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MapsRef = AutoDisposeFutureProviderRef<MapsBaseModels>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
