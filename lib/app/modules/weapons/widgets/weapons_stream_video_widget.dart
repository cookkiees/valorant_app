import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

import '../../../core/providers/video/video_provider.dart';

class WeaponsStreamVideoWidget extends ConsumerStatefulWidget {
  const WeaponsStreamVideoWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<WeaponsStreamVideoWidget> createState() =>
      _WeaponsStreamVideoWidgetState();
}

class _WeaponsStreamVideoWidgetState
    extends ConsumerState<WeaponsStreamVideoWidget>
    with TickerProviderStateMixin {
  bool isPlay = false;
  @override
  Widget build(BuildContext context) {
    final videoController = ref.watch(videoControllerProvider);
    final videoTimeStream = ref.watch(videoTimeProvider);

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 300,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(bottom: kToolbarHeight),
          decoration: const BoxDecoration(),
          child: videoController.value.isInitialized
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: videoController.value.aspectRatio,
                    child: Stack(
                      children: [
                        VideoPlayer(videoController),
                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: Builder(
                            builder: (context) {
                              final formattedTime =
                                  videoTimeStream.asData?.value ?? '00:00';
                              return Text(
                                formattedTime,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const Center(child: CircularProgressIndicator()),
        ),
        Positioned(
          bottom: 8,
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {
                if (videoController.value.isPlaying) {
                  videoController.pause();
                } else {
                  videoController.play();
                }
                setState(() {
                  isPlay = !isPlay;
                });
              },
              icon: Icon(
                isPlay ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
