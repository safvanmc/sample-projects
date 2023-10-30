import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  XFile? pickedFile;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () async {
                 ImagePicker picker = ImagePicker();
                 pickedFile = await picker.pickImage(source: ImageSource.gallery,);
                 setState(() {
                   image = File(pickedFile!.path);
                 });
                }, child: Text('Select Image'))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Expanded(child: Container(height: 250,width: 250,child: image == null? Text('no image'): Image.file(image!))),
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Expanded(child: Text(image == null ? 'image':pickedFile!.name,style: TextStyle(fontSize: 20),)),

            ],)
          ],
        ),
      ),
    );
  }
}
