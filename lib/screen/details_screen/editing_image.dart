import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_editingapp/utils/app_styles.dart';

import '../../utils/colors.dart';

class EditingImage extends StatefulWidget {
  final File image;
  const EditingImage({super.key, required this.image});

  @override
  State<EditingImage> createState() => EditingImageState();
}

class EditingImageState extends State<EditingImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
      actions: const [Padding(
        padding: EdgeInsets.fromLTRB(10,20,10,0),
        child: Text('Save',style: TextStyle(fontSize: MyFontsize.buttontext),),
      )],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              color: MyColors.secondaryColor.withOpacity(0.80),
              child: Image.file(widget.image)),
          // const SizedBox(height: 15,),
          const Spacer(),
        ],
      ),
    );
  }
}
