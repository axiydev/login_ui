import 'package:flutter/material.dart';

class DealOfTheDayWidget extends StatelessWidget {
  final String? text;
  final String? subtitle;
  final String? image;
  const DealOfTheDayWidget({
    super.key,
    required Size? size,
    required this.text,
    required this.image,
    required this.subtitle,
  }) : _size = size;

  final Size? _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            image!,
            width: _size!.width,
            height: _size!.width * 0.6,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(subtitle!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
