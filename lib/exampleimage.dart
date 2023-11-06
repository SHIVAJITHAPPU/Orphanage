import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImagePickerEx extends StatefulWidget {
  const ImagePickerEx({super.key});

  @override
  State<ImagePickerEx> createState() => _ImagePickerExState();
}

class _ImagePickerExState extends State<ImagePickerEx> {
  var photo = TextEditingController();

  final _picker = ImagePicker();
  File? _selectedimage;

  Future<void> _pickImage() async {
    await _picker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('IMAGE PICKER')),
      ),
      body: Container(
        child: TextFormField(
          controller: photo,
          onTap: _pickImage,
        ),
      ),
    );
  }
}
