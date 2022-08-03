import 'package:flutter/material.dart';

class CustomSliverPage extends StatefulWidget {
  static const String route = '/custom_sliver';
  const CustomSliverPage({super.key});

  @override
  State<CustomSliverPage> createState() => _CustomSliverPageState();
}

class _CustomSliverPageState extends State<CustomSliverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            expandedHeight: 250,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(),
          ),

          ///Sliver list
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 20,
                  (context, index) => Card(
                        child: ListTile(
                          title: Text('text $index'),
                        ),
                      ))),

          ///Sliver grid
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) => const Card(
                      child: FlutterLogo(),
                    )),
          ),
        ],
        body: const SafeArea(
          child: Center(
            child: Text("Body"),
          ),
        ),
      ),
    );
  }
}

class SliverSubHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const SizedBox(height: 60, child: Text('header'));
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
