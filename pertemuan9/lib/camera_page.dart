import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraPage({super.key, required this.cameras});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  Future<void> initCamera() async {
    if (widget.cameras.isEmpty) {
      print("Tidak ada kamera yang tersedia");
      return;
    }

    _controller = CameraController(
      widget.cameras.first,
      ResolutionPreset.medium,
    );

    await _controller!.initialize();

    if (!mounted) return;

    setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Future<void> takePicture() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    if (_controller!.value.isTakingPicture) return;

    try {
      final XFile file = await _controller!.takePicture();

      setState(() {
        pictureFile = file;
      });
    } catch (e) {
      print("Error saat mengambil foto : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: const Text("Camera")),
      body: Column(
        children: [
          Expanded(child: CameraPreview(_controller!)),
          if (pictureFile != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.file(File(pictureFile!.path), height: 100),
            ),
          ElevatedButton(
            onPressed: takePicture,
            child: const Text("Ambil gambar"),
          ),
        ],
      ),
    );
  }
}
