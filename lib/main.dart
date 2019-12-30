import 'package:flutter/material.dart';
import 'package:ttwui/components/app_color.dart';

void main() => runApp(MyApp());

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
          buildFeed(),
          buildFeed(),
          buildFeed(),
          buildFeed(),
          buildFeed(),
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

  Widget buildFeed() {
    return Column(children: <Widget>[
      Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: SizedBox(
                  child: Image.asset('images/person1.jpg'),
                  width: 50,
                ),
              ),
              SizedBox(width: 15),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('Nameeee',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColor.primary,
                            )),
                        SizedBox(width: 10),
                        Text('@aaaaaa', style: TextStyle(color: AppColor.hint)),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text('This is Tweet!!!!!!!!!!'),
                    SizedBox(height: 5),
                    Text('5 days ago', style: TextStyle(color: AppColor.hint)),
                    SizedBox(height: 5),
                    Row(
                      children: <Widget>[
                        Icon(Icons.chat, color: AppColor.primary),
                        SizedBox(width: 20),
                        Icon(Icons.autorenew, color: AppColor.primary),
                        SizedBox(width: 20),
                        Icon(Icons.favorite_border, color: AppColor.primary)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
      Divider(
        height: 1,
        color: AppColor.primary,
      ),
    ]);
  }
}
