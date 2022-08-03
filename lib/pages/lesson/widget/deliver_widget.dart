import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';

class DeliverWidget extends StatelessWidget {
  final String? text;
  const DeliverWidget({
    super.key,
    required this.text,
    required this.iconTheme,
  });

  final IconThemeData? iconTheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: UtilColors.deliverColor,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListTile(
        dense: false,
        horizontalTitleGap: 8,
        minLeadingWidth: 0,
        leading: Icon(
          Icons.location_on,
          color: iconTheme!.copyWith(color: Colors.white).color,
        ),
        title: Text(
          text!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
