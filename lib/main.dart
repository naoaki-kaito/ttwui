import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ttwui/components/app_color.dart';
import 'package:ttwui/pages/home_frame.dart';

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
        initialRoute: '/home_frame',
        routes: {
          '/home_frame': (context) => HomeFrame(),
        });
  }
}
