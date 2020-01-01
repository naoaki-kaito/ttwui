import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ttwui/components/app_color.dart';
import 'package:ttwui/components/tweet/item.dart';

void main() async {
  await DotEnv().load('.env');
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    print('Tweet');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feeds', style: TextStyle(color: AppColor.leading)),
      ),
      body: ListView(
        children: <Widget>[
          TweetItem(),
          TweetItem(),
          TweetItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.chat_bubble_outline, color: AppColor.leading),
        backgroundColor: AppColor.primary,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
