import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:twitter/twitter.dart';
import 'package:ttwui/components/app_color.dart';
import 'package:ttwui/pages/home_frame.dart';
import 'package:ttwui/components/tweet/detail.dart';

void main() async {
  await DotEnv().load('.env');
  Twitter twitter = new Twitter(
      '${DotEnv().env['TWITTER_CONSUMER_KEY']}',
      '${DotEnv().env['TWITTER_CONSUMER_SECRET']}',
      '${DotEnv().env['TWITTER_ACCESS_TOKEN_KEY']}',
      '${DotEnv().env['TWITTER_ACCESS_TOKEN_SECRET']}');
  var response = await twitter.request("GET", "statuses/user_timeline.json");
  print(response.body);
  twitter.close();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TTwui',
        theme: ThemeData(
          primaryColor: AppColor.primary,
        ),
        initialRoute: '/home_frame',
        routes: {
          '/home_frame': (context) => HomeFrame(),
          '/tweet/detail': (context) => TweetDetail(),
        });
  }
}
