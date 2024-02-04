import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:video_player/video_player.dart';

import '../state/state_provider.dart';
import '../weapons/weapons_provider.dart';

final videoControllerProvider = StateProvider.autoDispose((ref) {
  final weapons = ref.watch(weaponsProvider);
  final selectedWeaponsId = ref.watch(selectedWeaponsIdProvider);
  final selectedskinsId = ref.watch(selectedSkinsIdProvider);

  var urlDefault =
      'https://valorant.dyn.riotcdn.net/x/videos/release-08.01/32f7797f-4491-e21f-e40b-cfb639df3c97_default_universal.mp4';
  String getVideoUrl() {
    return weapons.maybeWhen(
      data: (models) {
        var video =
            models.data?[selectedWeaponsId].skins?[1].levels?[0].streamedVideo;
        log(selectedWeaponsId.toString());
        log(selectedskinsId.toString());
        log(video.toString());
        return video ?? urlDefault;
      },
      orElse: () => urlDefault,
    );
  }

  final controller = VideoPlayerController.networkUrl(
    Uri.parse(getVideoUrl()),
  );

  controller.initialize().then((_) {
    ref.keepAlive();
    ref.notifyListeners();
  });

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});

final videoTimeProvider = StreamProvider.autoDispose<String>((ref) {
  final controller = ref.watch(videoControllerProvider);

  return Stream.periodic(const Duration(seconds: 1))
      .map((_) => controller.value.position)
      .map((duration) => _formatDuration(duration))
      .takeWhile((formattedTime) =>
          controller.value.isPlaying); // Stop the stream when video is paused

  // Note: The StreamProvider will automatically dispose of the stream when the widget is disposed
});

String _formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "$twoDigitMinutes:$twoDigitSeconds";
}
