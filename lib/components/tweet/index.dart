import 'package:flutter/material.dart';
import 'package:ttwui/components/app_color.dart';
import 'package:ttwui/components/tweet/item.dart';

class TweetIndex extends StatefulWidget {
  const TweetIndex() : super();

  @override
  State<StatefulWidget> createState() {
    return _TweetIndexState();
  }
}

class _TweetIndexState extends State<TweetIndex> {
  void gotoTweet() {
    print('Tweet');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Feeds', style: TextStyle(color: AppColor.leading)),
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          TweetItem(),
          TweetItem(),
          TweetItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          gotoTweet();
        },
        tooltip: 'Increment',
        child: Icon(Icons.chat_bubble_outline, color: AppColor.primary),
        backgroundColor: AppColor.accent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            side: BorderSide(color: Colors.black12)),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
