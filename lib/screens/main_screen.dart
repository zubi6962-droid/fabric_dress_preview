import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../services/camera_service.dart';
import '../widgets/camera_preview.dart';
import '../widgets/controls_panel.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  CameraService? _camera;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    _camera = CameraService();
    await _camera!.initialize();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_camera == null || !_camera!.isInitialized) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(_camera!.controller!),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ControlsPanel(),
          ),
        ],
      ),
    );
  }
}
