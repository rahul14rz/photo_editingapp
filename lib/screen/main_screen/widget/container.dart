import 'package:flutter/material.dart';
import 'package:photo_editingapp/utils/app_styles.dart';

import '../../../utils/colors.dart';

class CustomContainer extends StatefulWidget {
  final String text;
  final double? height = 100;

  final VoidCallback function;
  // final double? width = MediaQuery.of(context).size.width;
  final Widget icon;
  final Color fromColor;
  final Color toColor;
  const CustomContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.function,
    this.fromColor = MyColors.primaryColor,
    this.toColor = MyColors.tertiaryColor,
  });

  @override
  State<CustomContainer> createState() => CustomContainerState();
}

class CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [widget.fromColor, widget.toColor],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: const [0.30, 1]),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.text,
              style: MyFontStyles.title,
            ),
          ],
        ),
      ),
    );
  }
}
