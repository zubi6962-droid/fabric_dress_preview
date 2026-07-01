import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPreviewWidget extends StatelessWidget {
  final CameraController controller;

  const CameraPreviewWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return CameraPreview(controller);
  }
}
