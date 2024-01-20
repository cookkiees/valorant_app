enum AppRoutes {
  agent,
  weapons,
  maps,
  bundles,
}

extension AppRoutesExtension on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.agent:
        return '/agent';
      case AppRoutes.weapons:
        return '/weapons';
      case AppRoutes.maps:
        return '/maps';
      case AppRoutes.bundles:
        return '/bundles';
      default:
        return '/agent';
    }
  }
}
