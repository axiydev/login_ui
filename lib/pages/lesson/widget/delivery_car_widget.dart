import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';

class DeliveryCarWidget extends StatelessWidget {
  final String? text;
  const DeliveryCarWidget({
    super.key,
    required Size? size,
    required this.text,
  }) : _size = size;

  final Size? _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: _size!.width,
      color: Colors.white,
      padding: const EdgeInsets.all(0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Text(
                text!,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(75)),
                child: Image.asset(
                  MyImages.carAmazon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
