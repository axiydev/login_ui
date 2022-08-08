import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/consts/consts.dart';
import 'package:login_ui/pages/instagram/model/post_model.dart';
import 'package:login_ui/pages/instagram/model/story_mod.dart';
import 'package:login_ui/pages/instagram/story_page/story_page.dart';
import 'package:login_ui/pages/instagram/widgets/story.dart';

class InstagramHomePage extends StatefulWidget {
  static const String route = '/instagram';
  const InstagramHomePage({super.key});

  @override
  State<InstagramHomePage> createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage>
    with SingleTickerProviderStateMixin {
  final List<InstaStory> _storyList = [];
  final List<InstagramPostModel> _postModelsList = [];
  int? _selectedPageIndex = 0;
  @override
  void didChangeDependencies() {
    _storyList.addAll([
      InstaStory(avatar: InstaImages.mainAvatar, username: 'Your story'),
      InstaStory(avatar: InstaImages.avatar, username: 'Hype_Sun_98'),
      InstaStory(avatar: InstaImages.avatar1, username: 'Karolbare'),
      InstaStory(avatar: InstaImages.avatar3, username: 'Waggles'),
      InstaStory(avatar: InstaImages.avatar, username: 'Hype_Sun_98'),
      InstaStory(avatar: InstaImages.avatar1, username: 'Karolbare'),
      InstaStory(avatar: InstaImages.avatar3, username: 'Waggles'),
      InstaStory(avatar: InstaImages.avatar, username: 'Hype_Sun_98'),
      InstaStory(avatar: InstaImages.avatar1, username: 'Karolbare'),
      InstaStory(avatar: InstaImages.avatar3, username: 'Waggles'),
      InstaStory(avatar: InstaImages.avatar, username: 'Hype_Sun_98'),
      InstaStory(avatar: InstaImages.avatar1, username: 'Karolbare'),
      InstaStory(avatar: InstaImages.avatar3, username: 'Waggles'),
    ]);

    _postModelsList.addAll([
      InstagramPostModel(
          username: 'Ruffles',
          avatar: InstaImages.mainAvatar,
          posts: Posts(isSingle: false, posts: [
            InstaImages.post5,
            InstaImages.post1,
            InstaImages.post4,
            InstaImages.post6
          ]),
          likes: 10),
      InstagramPostModel(
          username: 'Hype_Sun_98',
          avatar: InstaImages.avatar,
          posts: Posts(isSingle: true, posts: [
            InstaImages.post1,
          ]),
          likes: 200),
      InstagramPostModel(
          username: 'Ruffles',
          avatar: InstaImages.mainAvatar,
          posts: Posts(isSingle: false, posts: [
            InstaImages.post5,
            InstaImages.post1,
            InstaImages.post3,
            InstaImages.post6,
            InstaImages.post3,
            InstaImages.post6
          ]),
          likes: 400),
      InstagramPostModel(
          username: 'Ruffles',
          avatar: InstaImages.mainAvatar,
          posts: Posts(isSingle: false, posts: [
            InstaImages.post5,
            InstaImages.post1,
            InstaImages.post3,
            InstaImages.post6
          ]),
          likes: 400),
      InstagramPostModel(
          username: 'Ruffles',
          avatar: InstaImages.mainAvatar,
          posts: Posts(isSingle: false, posts: [
            InstaImages.post5,
            InstaImages.post1,
            InstaImages.post3,
            InstaImages.post6
          ]),
          likes: 400),
      InstagramPostModel(
          username: 'Ruffles',
          avatar: InstaImages.mainAvatar,
          posts: Posts(isSingle: false, posts: [
            InstaImages.post5,
            InstaImages.post1,
            InstaImages.post3,
            InstaImages.post6
          ]),
          likes: 400),
    ]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Billabong', fontSize: 33, color: Color(0xFF000000)),
        ),
        elevation: .0,
        bottomOpacity: .0,
        centerTitle: false,
        actions: [
          Image.asset(
            InstaIcons.add,
            width: 24,
          ),
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            InstaIcons.heart,
            width: 24,
          ),
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            InstaIcons.messenger,
            width: 24,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: bodyWidget,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex!,
          onTap: (value) {
            setState(() {
              _selectedPageIndex = value;
              setState(() {});
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  InstaIcons.home,
                  color: _selectedPageIndex == 0 ? Colors.black : Colors.grey,
                ),
                label: 'home'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: 'text'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: 'hello'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  InstaIcons.heart,
                  color: _selectedPageIndex == 3 ? Colors.black : Colors.grey,
                ),
                label: 'home'),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage(
                      InstaImages.mainAvatar,
                    )),
                label: 'text'),
          ]),
    );
  }

  Widget get bodyWidget {
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        children: [
          ///stories
          SizedBox(
            height: 100,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: _storyList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => OpenContainer(
                openElevation: .0,
                closedElevation: .0,
                transitionDuration: const Duration(milliseconds: 1000),
                transitionType: ContainerTransitionType.fade,
                openShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                closedBuilder: (context, action) => StoryWiget(
                  story: _storyList[index],
                ),
                openBuilder: (context, action) =>
                    StoryPage(image: _storyList[index].avatar),
              ),
            ),
          ),

          ///posts
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _postModelsList.length,
              itemBuilder: (context, index) {
                var currentIndex = 0;
                var post = _postModelsList[index];
                var pageController = PageController(initialPage: 0);
                return StatefulBuilder(builder: (context, setState) {
                  return Card(
                    margin: EdgeInsets.zero,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                              post.avatar!,
                            ),
                          ),
                          title: Text(post.username!),
                          trailing: const Icon(Icons.more_horiz),
                        ),
                        SizedBox(
                          height: 375,
                          width: double.infinity,
                          child: Stack(children: [
                            PageView.builder(
                                key: ValueKey('$index'),
                                controller: pageController,
                                onPageChanged: (value) {
                                  setState(() {
                                    currentIndex = value;
                                  });
                                  if (kDebugMode) {
                                    print('VAL::$value');
                                  }
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: post.posts!.posts!.length,
                                itemBuilder: (context, index) {
                                  var postImage = post.posts!.posts![index];
                                  return Card(
                                    margin: EdgeInsets.zero,
                                    child: Image.asset(
                                      postImage!,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }),
                            if (!post.posts!.isSingle!)
                              Positioned(
                                  top: 10,
                                  right: 15,
                                  child: Card(
                                    color: Colors.black.withOpacity(0.4),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Text(
                                        '${currentIndex + 1}/${post.posts!.posts!.length}',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  )),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Image.asset(InstaIcons.heart)),
                                    Expanded(
                                        flex: 1,
                                        child: Image.asset(InstaIcons.comment)),
                                    Expanded(
                                        flex: 1,
                                        child: Image.asset(InstaIcons.share)),
                                    const Spacer(
                                      flex: 1,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: !post.posts!.isSingle!
                                    ? customIndicator(
                                        length: post.posts!.posts!.length,
                                        selectedIndex: currentIndex)
                                    : const SizedBox.shrink(),
                              ),
                              const Expanded(
                                  flex: 1,
                                  child: Icon(Icons.bookmark_border_outlined))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                "${post.likes} Likes",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 14),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  text: '${post.username!} ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                  children: const [
                                    TextSpan(
                                      text:
                                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.,',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: 'more',
                                    ),
                                  ])),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SizedBox(
                              width: double.infinity,
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  'View 12 commits',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xFF999999)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  );
                });
              })
        ],
      ),
    );
  }

  Widget customIndicator({int? length, int? selectedIndex}) {
    if (kDebugMode) {
      print(selectedIndex);
    }
    return Row(
      children: [
        for (var i = 0; i < length!; i++)
          AnimatedContainer(
            duration: const Duration(milliseconds: 450),
            curve: Curves.easeIn,
            height: 8,
            width: 8,
            margin: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIndex! == i ? Colors.blue : Colors.grey),
          ),
      ],
    );
  }
}
