
import 'package:flutter/material.dart';
import 'package:joshaba/model/post.dart';
import 'package:joshaba/widgets/online_widget.dart';
import 'package:joshaba/widgets/post_widget.dart';
import 'package:joshaba/widgets/separator_widget.dart';
import 'package:joshaba/widgets/stories_widget.dart';
import 'package:joshaba/widgets/write_something_widget.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          WriteSomethingWidget(),
          SeparatorWidget(),
          OnlineWidget(),
          SeparatorWidget(),
          StoriesWidget(),
          for(Post post in posts) Column(
            children: <Widget>[
              SeparatorWidget(),
              PostWidget(post: post),
            ],
          ),
          SeparatorWidget(),
        ],
      ),
    );
  }
}