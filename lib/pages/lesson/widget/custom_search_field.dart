import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';

class SearchFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  const SearchFieldWidget({
    super.key,
    required Size? size,
    required this.iconTheme,
    required this.controller,
    required this.hintText,
  }) : _size = size;

  final Size? _size;
  final IconThemeData? iconTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: _size!.width,
      color: UtilColors.amazonPrimaryColor,
      child: TextField(
        decoration: InputDecoration(
            isDense: false,
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 17),
            prefixIcon: Icon(
              Icons.search,
              color: iconTheme!.color,
            ),
            suffixIcon: Icon(
              Icons.camera_alt,
              color: iconTheme!.color,
            ),
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
