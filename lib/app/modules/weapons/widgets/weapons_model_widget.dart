import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/state/state_provider.dart';
import '../../../core/providers/weapons/weapons_provider.dart';

class WeaponsModelWidget extends ConsumerWidget {
  const WeaponsModelWidget({
    super.key,
    this.type = WeaponsModelPlatformType.mobile,
  });

  final WeaponsModelPlatformType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weapons = ref.watch(weaponsProvider);
    final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);

    return Container(
      height: type == WeaponsModelPlatformType.mobile ? getHeight : null,
      width: type == WeaponsModelPlatformType.web ? getWidth : null,
      margin: getMargin,
      child: weapons.when(
        data: (models) {
          return ListView.builder(
            itemCount: models.data?.length,
            scrollDirection: getScroolDirection,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var result = models.data?[index];

              return Padding(
                padding: models.data?.length == index + 1
                    ? EdgeInsets.zero
                    : getPadding,
                child: InkWell(
                  onTap: () {
                    ref.watch(selectedWeaponsIdProvider.notifier).state = index;
                  },
                  child: Container(
                    width: getWidth,
                    height: getHeight,
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedWeaponsId == index
                            ? Colors.blueGrey
                            : Colors.white38,
                      ),
                    ),
                    child: Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedWeaponsId == index
                              ? Colors.blueGrey
                              : Colors.white38,
                        ),
                        gradient: selectedWeaponsId == index
                            ? const LinearGradient(
                                colors: [
                                  Colors.blueGrey,
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                stops: [0.0, 1.0],
                              )
                            : null,
                        image: DecorationImage(
                          opacity: 1,
                          fit: BoxFit.fitHeight,
                          image: NetworkImage('${result?.displayIcon}'),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return const Text("text");
        },
        loading: () {
          return const CircularProgressIndicator.adaptive();
        },
      ),
    );
  }

  double get getHeight {
    switch (type) {
      case WeaponsModelPlatformType.mobile:
        return 70;
      case WeaponsModelPlatformType.web:
        return 80;
      default:
        return 70;
    }
  }

  double? get getWidth {
    switch (type) {
      case WeaponsModelPlatformType.mobile:
        return 200;
      case WeaponsModelPlatformType.web:
        return 300;
      default:
        return 70;
    }
  }

  EdgeInsetsGeometry get getMargin {
    switch (type) {
      case WeaponsModelPlatformType.mobile:
        return const EdgeInsets.only(bottom: kBottomNavigationBarHeight + 20);
      case WeaponsModelPlatformType.web:
        return const EdgeInsets.only(top: 52, left: 8);
      default:
        return EdgeInsets.zero;
    }
  }

  EdgeInsetsGeometry get getPadding {
    switch (type) {
      case WeaponsModelPlatformType.mobile:
        return const EdgeInsets.only(right: 16);
      case WeaponsModelPlatformType.web:
        return const EdgeInsets.only(bottom: 20);
      default:
        return EdgeInsets.zero;
    }
  }

  Axis get getScroolDirection {
    switch (type) {
      case WeaponsModelPlatformType.mobile:
        return Axis.horizontal;
      case WeaponsModelPlatformType.web:
        return Axis.vertical;
      default:
        return Axis.horizontal;
    }
  }
}

enum WeaponsModelPlatformType {
  web,
  mobile,
}
