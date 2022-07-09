import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:portfolio/animations_from_flutter/simple_animations_package.dart';
import 'package:portfolio/widgets/home/nav_bar.dart';

class Logo3DView extends StatelessWidget {
  const Logo3DView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Stack(
        //   children: [
        //     ModelViewer(
        //       src:
        //           'https://logo3d.s3.ca-central-1.amazonaws.com/Possible_logo_for_DS.glb',
        //       ar: true,
        //       autoRotate: false,
        //       cameraControls: true,
        //     ),
        //     Scaffold(
        //       floatingActionButton: FloatMenu(),
        //     ),
        //   ],
        // );
        Scaffold(
            floatingActionButton: const FloatMenu(),
            body: Stack(
              children: [
                const AnimatedBackground(),
                ModelViewer(
                  src:
                      'https://logo3d.s3.ca-central-1.amazonaws.com/Possible_logo_for_DS.glb',
                  ar: false,
                  arPlacement: ArPlacement.wall,
                  autoRotate: false,
                  cameraControls: true,
                ),
              ],
            ));
  }
}

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(
          const Duration(seconds: 3),
          ColorTween(
              begin: const Color.fromARGB(255, 185, 183, 255),
              end: const Color.fromARGB(255, 255, 154, 154))),
      Track("color2").add(
          const Duration(seconds: 3),
          ColorTween(
              begin: const Color.fromARGB(255, 255, 232, 120),
              end: const Color.fromARGB(255, 0, 174, 255))),
      Track("color3").add(
          const Duration(seconds: 3),
          ColorTween(
              begin: const Color.fromARGB(255, 187, 17, 17),
              end: const Color.fromARGB(255, 20, 141, 47)))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, dynamic animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                animation["color1"],
                animation["color2"],
              ])),
        );
      },
    );
  }
}
