import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Logo3DView extends StatelessWidget {
  const Logo3DView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      backgroundColor: Colors.black,
      src: 'assets/Possible_logo_for_DS.glb',
      ar: true,
      autoRotate: true,
      cameraControls: true,
    );
  }
}
