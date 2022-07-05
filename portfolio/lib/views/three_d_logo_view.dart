import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Logo3DView extends StatelessWidget {
  const Logo3DView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Model Viewer")),
        body: ModelViewer(
          src: 'assets/Possible_logo_for_DS.glb',
          alt: "A 3D model of an astronaut",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),
      ),
    );
  }
}
