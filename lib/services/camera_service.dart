import 'package:camera/camera.dart';

class CameraService {
  CameraController? _controller;
  bool _initialized = false;

  Future<void> initialize() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.high);
    await _controller!.initialize();
    _initialized = true;
  }

  bool get isInitialized => _initialized;
  CameraController? get controller => _controller;

  Future<XFile> takePicture() async {
    return await _controller!.takePicture();
  }

  void dispose() {
    _controller?.dispose();
  }
}
