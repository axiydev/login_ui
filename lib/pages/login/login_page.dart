import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';
import 'package:login_ui/model/common_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Size? _size;

  CommonModel? commonModel;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: _size!.height,
        width: _size!.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyImages.party), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ///Text
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _size!.width * 0.07, vertical: 10),
                child: SizedBox(
                  width: _size!.width,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: "Find the best parties near you.",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            height: 1.1),
                        children: [
                          TextSpan(
                            text:
                                '\n\nLet us find you a party for your interest',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: UtilColors.textColor,
                                    height: 1,
                                    fontWeight: FontWeight.w400),
                          )
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: _size!.width * 0.3,
              ),

              ///Button
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _size!.width * 0.07, vertical: 10),
                child: SizedBox(
                  width: _size!.width,
                  child: CupertinoButton(
                    color: UtilColors.buttonColor,
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {},
                    child: const Text('Start'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
