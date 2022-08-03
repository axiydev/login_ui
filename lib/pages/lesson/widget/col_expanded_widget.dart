import 'package:flutter/material.dart';

class ColExpandedWidget extends StatelessWidget {
  final String? first;
  final String? second;
  const ColExpandedWidget({
    super.key,
    required this.first,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 30,
        child: Row(
          children: [
            ImageExpandedWidget(
              image: first,
            ),
            const Spacer(
              flex: 1,
            ),
            ImageExpandedWidget(
              image: second,
            ),
          ],
        ));
  }
}

class ImageExpandedWidget extends StatelessWidget {
  final String? image;

  const ImageExpandedWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 30,
        child: Image.asset(
          image!,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ));
  }
}
