import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';

class SignInWidget extends StatelessWidget {
  final VoidCallback? signInCallback;
  final VoidCallback? createAccountCallback;
  final String? title;
  final String? signInTitle;
  final String? createAcccountTitle;
  const SignInWidget({
    super.key,
    required Size? size,
    required this.signInCallback,
    required this.createAccountCallback,
    required this.title,
    required this.signInTitle,
    this.createAcccountTitle,
  }) : _size = size;

  final Size? _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: _size!.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              title!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              onPressed: signInCallback,
              color: UtilColors.buttonColorAmazon,
              child: Text(
                signInTitle!,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          TextButton(
            onPressed: createAccountCallback,
            child: Text(createAcccountTitle!,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
