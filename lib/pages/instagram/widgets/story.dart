import 'package:flutter/material.dart';
import 'package:login_ui/pages/instagram/model/story_mod.dart';

class StoryWiget extends StatelessWidget {
  final InstaStory? story;
  const StoryWiget({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: .0,
        margin: EdgeInsets.zero,
        color: Colors.transparent,
        child: SizedBox(
          width: 70,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 2.3, color: const Color(0xFFDE1B00))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    story!.avatar!,
                    width: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                child: Text(
                  story!.username!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ));
  }
}
