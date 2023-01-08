import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_editingapp/utils/colors.dart';
import 'package:photo_editingapp/utils/next_screen.dart';

import '../../utils/screen_size.dart';
import 'editing_image.dart';

class EditPhoto extends StatefulWidget {
  final File image;
  const EditPhoto({super.key, required this.image});

  @override
  State<EditPhoto> createState() => _EditPhotoState();
}

class _EditPhotoState extends State<EditPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              color: MyColors.bgcolor,
              child: Image.file(widget.image)),
          // const SizedBox(height: 15,),
          const Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.crop,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(context, EditingImage(image: widget.image,));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.photo_size_select_actual,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_reaction_outlined,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.text_fields,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.bubble_chart_outlined,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.auto_fix_high,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.auto_awesome_outlined,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.color_lens_outlined,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.animation_outlined,
                    size: IconSize.mediam,
                  ),
                  onPressed: () {
                    nextscreenPush(
                        context,
                        EditingImage(
                          image: widget.image,
                        ));
                  },
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
