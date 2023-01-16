import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_editor_plus/image_editor_plus.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/custom_snackbar.dart';
import 'details_screen/edit_photo.dart';
import 'main_screen/widget/container.dart';
import '../utils/next_screen.dart';

import '../utils/app_styles.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? imageFile;
  Future<File?> getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
      imageQuality: null,
    );
    if (file != null) {
      return File(file.path);
    } else {
      return null;
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
              function: () async {
                final file = await getImage(source: ImageSource.gallery);
                if (file != null && mounted) {
                  CustomNavigation.nextscreenPush(
                    context,
                    ImageEditor(
                      image: file.readAsBytesSync(),
                    ),
                  );
                } else {
                  showSnackBar('Please choose an image', context);
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomContainer(
              text: 'From Camera',
              icon: const Icon(Icons.camera),
              function: () async {
                final file = await getImage(source: ImageSource.camera);
                if (file != null && mounted) {
                  CustomNavigation.nextscreenPush(
                    context,
                    EditPhoto(
                      image: file,
                    ),
                  );
                } else {
                  showSnackBar('Please choose an image', context);
                }
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
