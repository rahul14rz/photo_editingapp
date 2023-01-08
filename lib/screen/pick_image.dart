import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_editingapp/screen/details_screen/edit_photo.dart';
import 'package:photo_editingapp/screen/main_screen/widget/container.dart';
import 'package:photo_editingapp/utils/next_screen.dart';

import '../utils/app_styles.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? imageFile;
  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source, imageQuality: 70);

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }

  FilePickerResult? result;
  pickFile() async {
    result = await FilePicker.platform.pickFiles();

    if (result != null) {
      imageFile = File(result!.files.single.path!);
      setState(() {
        isImage = true;
      });
    }
  }

  bool isImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(MyPadding.overall),
        child: Column(
          children: [
            const Spacer(),
            CustomContainer(
                text: 'From Gallery',
                icon: const Icon(Icons.photo_library),
                function: () {
                  pickFile();
                  if (imageFile != null) {
                    nextscreenPush(context,  EditPhoto(image: imageFile!,));
                  }
                }),
            const SizedBox(
              height: 15,
            ),
            CustomContainer(
                text: 'From Camera',
                icon: const Icon(Icons.camera),
                function: () {
                  getImage(source: ImageSource.camera);
                  nextscreenPush(context,  EditPhoto(image: imageFile!));
                }),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
