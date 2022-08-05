import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Color? color;
  final String? text;
  final IconData? icon;
  const SectionWidget({
    super.key,
    required this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.1,
      child: Chip(
        backgroundColor: color!.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: Text(
          text!,
          style: TextStyle(color: color),
        ),
        avatar: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(icon, color: color),
        ),
      ),
    );
  }
}
