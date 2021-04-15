import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:snakeandspiderapp/constants.dart';
import 'package:tflite/tflite.dart';

class SnakeCam extends StatefulWidget {
  @override
  _SnakeCam createState() => _SnakeCam();
}

class _SnakeCam extends State<SnakeCam> {
  File _image;
  final picker = ImagePicker();

  loadmymodel() async {
    String res = await Tflite.loadModel(
        model: "assets/Snakes_model.tflite",
        labels: "assets/Snakes_model_labels.txt",
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );
    print(res);
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNAKE IDENTIFICATION'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
        backgroundColor: kBottomContainerColor,
      ),
    );
  }
}
