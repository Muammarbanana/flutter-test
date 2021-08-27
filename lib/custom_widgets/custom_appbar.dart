import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordo_test/view/homepage.dart';

class CustomAppBar extends StatefulWidget {
  final String backButtonAsset;
  final String title;
  final int titleColor;
  final List<String> iconAssets;
  const CustomAppBar({
    Key? key,
    required this.backButtonAsset,
    required this.title,
    required this.titleColor,
    required this.iconAssets,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listIcon = [];
    for (final asset in widget.iconAssets) {
      listIcon.add(
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: 22,
            width: 22,
            child: Image.asset(asset),
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.offAll(() => const HomePage());
              },
              child: SizedBox(
                height: 22,
                width: 22,
                child: Image.asset(widget.backButtonAsset),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(widget.titleColor),
              ),
            )
          ],
        ),
        Row(
          children: [...listIcon],
        ),
      ],
    );
  }
}
