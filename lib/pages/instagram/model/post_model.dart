class InstagramPostModel {
  String? username;
  String? avatar;
  Posts? posts;
  int? likes;

  InstagramPostModel(
      {String? username, String? avatar, Posts? posts, required this.likes}) {
    this.avatar = avatar;
    this.posts = posts;
    this.username = username;
  }
}

class Posts {
  bool? isSingle;
  List<String?>? posts;
  Posts({required this.isSingle, required this.posts});
}
