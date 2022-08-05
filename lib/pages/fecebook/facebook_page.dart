import 'package:badges/badges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/consts/consts.dart';
import 'package:login_ui/model/content_model.dart';
import 'package:login_ui/model/story_model.dart';
import 'package:login_ui/pages/fecebook/widget/section_widget.dart';

class FacebookPage extends StatefulWidget {
  static const String route = '/facebook';
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  int? _currentIndex = 0;
  Size? _size;
  final List<StoryModel?> _storyModelList = [];
  final List<ContentModel?> _contentModelList = [];
  @override
  void initState() {
    if (kDebugMode) {
      print('INIT STATE');
    }

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (kDebugMode) {
      print('did change depenendencies');
    }
    _contentModelList.addAll([
      for (var i = 1; i <= 10; i++)
        ContentModel(
            avatar: i.isEven ? MyIcons.avatar1 : MyIcons.avatar,
            imageUrl: 'https://picsum.photos/400/300?random=$i',
            location: '1 h .  Mumbai, Maharastra .',
            userText: 'Old is Gold..!! 😍😍',
            username: 'Deven mestry is with Mahesh Joshi.')
    ]);
    _storyModelList.addAll([
      StoryModel(
          avatar: MyIcons.avatar,
          image: MyImages.shortTwo,
          isUser: true,
          text: ''),
      StoryModel(
          avatar: MyIcons.avatar,
          image: MyImages.short,
          isUser: false,
          text: 'Tom Jerry'),
      StoryModel(
          avatar: MyIcons.avatar1,
          image: MyImages.shortOne,
          isUser: false,
          text: 'Arnold Jerry'),
      StoryModel(
          avatar: MyIcons.avatar,
          image: MyImages.shortTwo,
          isUser: false,
          text: 'Tom Jerry'),
      StoryModel(
          avatar: MyIcons.avatar1,
          image: MyImages.shortOne,
          isUser: false,
          text: 'Arnold Jerry'),
      StoryModel(
          avatar: MyIcons.avatar,
          image: MyImages.shortTwo,
          isUser: false,
          text: 'Tom Jerry'),
      StoryModel(
          avatar: MyIcons.avatar1,
          image: MyImages.shortOne,
          isUser: false,
          text: 'Arnold Jerry'),
      StoryModel(
          avatar: MyIcons.avatar,
          image: MyImages.shortTwo,
          isUser: false,
          text: 'Tom Jerry'),
      StoryModel(
          avatar: MyIcons.avatar1,
          image: MyImages.shortOne,
          isUser: false,
          text: 'Arnold Jerry'),
      StoryModel(
          avatar: MyIcons.avatar,
          image: MyImages.shortTwo,
          isUser: false,
          text: 'Tom Jerry'),
      StoryModel(
          avatar: MyIcons.avatar1,
          image: MyImages.shortOne,
          isUser: false,
          text: 'Arnold Jerry'),
    ]);
    _size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build');
    }
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        bottomOpacity: .0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF384CFF), Color(0xFF00A3FF)])
              .createShader(bounds),
          child: const Text(
            'facebook',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: 1),
          ),
        ),
        actions: [
          Image.asset(
            MyIcons.fb,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            ///TAB BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: NavigationBarTheme(
                data: NavigationBarThemeData(
                    indicatorColor: Colors.white,
                    labelTextStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(
                            fontSize: 30,
                            height: 0.4,
                            color: UtilColors.facebookPrimaryColor))),
                child: NavigationBar(
                    selectedIndex: _currentIndex!,
                    onDestinationSelected: (value) => setState(() {
                          _currentIndex = value;
                        }),
                    labelBehavior:
                        NavigationDestinationLabelBehavior.onlyShowSelected,
                    backgroundColor: Colors.white,
                    destinations: [
                      NavigationDestination(
                          icon: FaIcon(
                            Icons.home,
                            color: _currentIndex == 0
                                ? UtilColors.facebookPrimaryColor
                                : Colors.black,
                            size: 30,
                          ),
                          label: '\u{2022}'),
                      NavigationDestination(
                          icon: FaIcon(
                            Icons.people_outline,
                            color: _currentIndex == 1
                                ? UtilColors.facebookPrimaryColor
                                : Colors.black,
                            size: 30,
                          ),
                          label: '\u{2022}'),
                      NavigationDestination(
                          icon: FaIcon(
                            Icons.person_outlined,
                            color: _currentIndex == 2
                                ? UtilColors.facebookPrimaryColor
                                : Colors.black,
                            size: 30,
                          ),
                          label: '\u{2022}'),
                      NavigationDestination(
                          icon: Badge(
                            position: const BadgePosition(end: -3, top: -5),
                            badgeContent: const Text(
                              '9',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 7),
                            ),
                            child: Image.asset(
                              MyIcons.video,
                              color: _currentIndex == 3
                                  ? UtilColors.facebookPrimaryColor
                                  : Colors.black,
                              width: 30,
                            ),
                          ),
                          label: '\u{2022}'),
                      NavigationDestination(
                          icon: Badge(
                            position: const BadgePosition(end: -5, top: -8),
                            badgeContent: const Text(
                              '3',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 7),
                            ),
                            child: FaIcon(
                              Icons.notification_add_outlined,
                              color: _currentIndex == 4
                                  ? UtilColors.facebookPrimaryColor
                                  : Colors.black,
                            ),
                          ),
                          label: '\u{2022}'),
                      NavigationDestination(
                          icon: Icon(
                            Icons.menu,
                            color: _currentIndex == 5
                                ? UtilColors.facebookPrimaryColor
                                : Colors.black,
                          ),
                          label: '\u{2022}'),
                    ]),
              ),
            ),

            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    width: _size!.width,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                MyImages.avatar,
                                fit: BoxFit.cover,
                              ),
                            )),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 18,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 13,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    hintText: 'What\'s on your mind? Sanjay',
                                    hintStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                    fillColor:
                                        Colors.grey[400]!.withOpacity(0.3),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent)),
                                    suffixIcon: const Icon(
                                      Icons.image_outlined,
                                      color: Colors.black,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            width: 0,
                                            color: Colors.transparent))),
                              ),
                            )),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              height: double.infinity,
                              child: Card(
                                elevation: 0,
                                margin: EdgeInsets.zero,
                                color: Colors.grey[400]!.withOpacity(0.3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        SectionWidget(
                          icon: Icons.video_collection,
                          text: 'Reels',
                          color: Color(0xFFF9C50F),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SectionWidget(
                          icon: Icons.video_call,
                          text: 'Room',
                          color: Color(0xFF44C041),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SectionWidget(
                          icon: Icons.group,
                          text: 'Group',
                          color: Color(0xFFF85900),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SectionWidget(
                          icon: Icons.live_tv,
                          text: 'Live',
                          color: Color(0xFF486BE5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///stories
                  SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 8,
                            ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _storyModelList.length,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        itemBuilder: (context, index) {
                          var item = _storyModelList[index]!;
                          return AspectRatio(
                            aspectRatio: 1.4 / 2.7,
                            child: Column(
                              children: [
                                Card(
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      item.image!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                !item.isUser!
                                    ? Container(
                                        width: 30,
                                        transform: Matrix4.translationValues(
                                            0, -15, 0),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                UtilColors.facebookPrimaryColor,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            item.avatar!,
                                            fit: BoxFit.cover,
                                          ),
                                        ))
                                    : Container(
                                        width: 22,
                                        height: 22,
                                        transform: Matrix4.translationValues(
                                            0, -10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color:
                                              UtilColors.facebookPrimaryColor,
                                          border: Border.all(
                                              width: 2, color: Colors.white),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                Transform.translate(
                                    offset: const Offset(0, -15),
                                    child: Text(
                                      item.text!,
                                      overflow: TextOverflow.ellipsis,
                                    ))
                              ],
                            ),
                          );
                        }),
                  ),

                  ///contents
                  ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => const Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _contentModelList.length,
                      itemBuilder: (context, index) {
                        var item = _contentModelList[index];
                        return Card(
                          margin: EdgeInsets.zero,
                          elevation: .0,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 70,
                                child: ListTile(
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        item!.avatar!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Text(
                                      item.username!,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    subtitle: Text(
                                      item.location!,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    trailing: const Padding(
                                      padding: EdgeInsets.only(bottom: 25),
                                      child: Icon(Icons.more_vert),
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                    width: _size!.width,
                                    child: Text(
                                      item.userText!,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                              Image.network(
                                item.imageUrl!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              ListTile(
                                title: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(Icons.favorite_outline),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Icon(Icons.sms_outlined),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(MyIcons.fb),
                                    ]),
                                subtitle: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(8, 0),
                                      child: const FaIcon(
                                        FontAwesomeIcons.thumbsUp,
                                        size: 18,
                                        color: UtilColors.facebookPrimaryColor,
                                      ),
                                    ),
                                    const ColoredBox(
                                      color: Colors.white,
                                      child: FaIcon(
                                        FontAwesomeIcons.gratipay,
                                        color: Colors.red,
                                        size: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Flexible(
                                      child: Text(
                                        'Liked by Sachin Kamble and 155 others ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    '4 Comments',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      })
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
