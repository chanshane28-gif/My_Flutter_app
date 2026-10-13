import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cameras = await availableCameras();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraApp(camera: cameras.first),
    ),
  );
}

class CameraApp extends StatefulWidget {
  final CameraDescription camera;

  const CameraApp({
    super.key,
    required this.camera,
  });

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();

    controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    controller.initialize().then((_) {
      if (!mounted) return;

      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Camera'),
      ),
      body: CameraPreview(controller),
    );
  }
}

