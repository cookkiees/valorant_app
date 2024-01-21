import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/app/layout/responsive_layout.dart';

import '../../modules/agent/presentation/pages/agent_screen.dart';
import '../../modules/main/main_mobile_screen.dart';
import '../../modules/main/main_web_screen.dart';
import 'app_routes.dart';

mixin class AppRouter {
  static GoRouter routerWeb() {
    return GoRouter(
      initialLocation: AppRoutes.agent.path,
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return ResponsiveLayout(
              phone: MainWebScreen(navigationShell: navigationShell),
              tablet: MainWebScreen(navigationShell: navigationShell),
              largeTablet: MainWebScreen(navigationShell: navigationShell),
              computer: MainWebScreen(navigationShell: navigationShell),
            );
          },
          branches: _buildBranches(),
        )
      ],
    );
  }

  static GoRouter routerMobile() {
    return GoRouter(
      initialLocation: AppRoutes.agent.path,
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MainMobileScreen(navigationShell: navigationShell);
          },
          branches: _buildBranches(),
        )
      ],
    );
  }

  static List<StatefulShellBranch> _buildBranches() {
    return [
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            name: AppRoutes.agent.name,
            path: AppRoutes.agent.path,
            builder: (context, state) => const AgentScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            name: AppRoutes.weapons.name,
            path: AppRoutes.weapons.path,
            builder: (context, state) => const Center(child: Text('WEAPONS')),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            name: AppRoutes.maps.name,
            path: AppRoutes.maps.path,
            builder: (context, state) => const Center(child: Text('MAPS')),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: <RouteBase>[
          GoRoute(
            name: AppRoutes.bundles.name,
            path: AppRoutes.bundles.path,
            builder: (context, state) => const Center(child: Text('BUNDLESS')),
          ),
        ],
      ),
    ];
  }
}
