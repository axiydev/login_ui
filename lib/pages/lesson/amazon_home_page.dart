import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';
import 'package:login_ui/pages/lesson/widget/col_expanded_widget.dart';
import 'package:login_ui/pages/lesson/widget/custom_search_field.dart';
import 'package:login_ui/pages/lesson/widget/deal_of_the_day_widget.dart';
import 'package:login_ui/pages/lesson/widget/deliver_widget.dart';
import 'package:login_ui/pages/lesson/widget/delivery_car_widget.dart';
import 'package:login_ui/pages/lesson/widget/sign_in_widget.dart';

class AmazonHomePage extends StatefulWidget {
  static const String route = '/amazon';
  const AmazonHomePage({super.key});

  @override
  State<AmazonHomePage> createState() => _AmazonHomePageState();
}

class _AmazonHomePageState extends State<AmazonHomePage> {
  Size? _size;
  IconThemeData? iconTheme;
  TextEditingController? textController = TextEditingController();
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;
    iconTheme = Theme.of(context).iconTheme;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UtilColors.amazonBackColor,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: UtilColors.amazonPrimaryColor,
        centerTitle: false,
        title: Image.asset(
          MyImages.logoAmazon,
          width: 100,
        ),
        elevation: .0,
        bottomOpacity: .0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          const SizedBox(
            width: 10,
          )
        ],
      ),

      ///body
      body: SafeArea(
        child: Column(
          children: [
            SearchFieldWidget(
              size: _size,
              iconTheme: iconTheme,
              hintText: 'What are you looking for?',
              controller: textController,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ///Deliver widget
                    DeliverWidget(
                        iconTheme: iconTheme,
                        text: 'Deliver to Tashkent Republic of'),

                    ///shipping widget
                    DeliveryCarWidget(
                      size: _size,
                      text: 'We ship 45 million products',
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    ///Sign in widget
                    SignInWidget(
                      size: _size,
                      title: 'Sign in for the best exprience',
                      signInTitle: 'Sign In',
                      createAcccountTitle: 'Create an account',
                      createAccountCallback: () {},
                      signInCallback: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    ///Deal of the day widget widget
                    DealOfTheDayWidget(
                      size: _size,
                      text: 'Deal of the day',
                      image: MyImages.productOfTheDay,
                      subtitle:
                          'Up to 31% off APC UPC battery Back \$10.99 - \$79.9',
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    ///products
                    Container(
                      color: Colors.white,
                      width: _size!.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Best seller in electronics',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: _size!.width - 20,
                            width: double.infinity,
                            child: Column(children: const [
                              ColExpandedWidget(
                                first: MyImages.productOfTheDay,
                                second: MyImages.second,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              ColExpandedWidget(
                                first: MyImages.third,
                                second: MyImages.first,
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
