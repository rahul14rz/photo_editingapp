import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../utils/next_screen.dart';
import '../../../utils/app_styles.dart';
import '../../pick_image.dart';
import '../widget/container.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(MyPadding.overall),
        child: Column(
          children: [
            const Spacer(),
            CustomContainer(
              function: () {
                CustomNavigation.nextscreenPush(context, const PickImage(),);
              },
              text: 'Edit Photo',
              icon: const Icon(
                Icons.photo_filter_rounded,
                size: 35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomContainer(
              function: () {},
              text: 'Collage',
              icon: const Icon(
                Icons.category,
                size: 35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomContainer(
              function: () {},
              text: 'Slide Show',
              icon: const Icon(
                Icons.slideshow,
                size: 35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomContainer(
              function: () {},
              text: 'Edit Video',
              icon: const Icon(
                Icons.video_stable,
                size: 35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomContainer(
              function: () {},
              text: 'Template',
              icon: const Icon(
                Icons.filter_frames_sharp,
                size: 35,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
