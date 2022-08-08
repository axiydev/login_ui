import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  final String? image;
  const StoryPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.asset(
          image!,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
