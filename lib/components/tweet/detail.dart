import 'package:flutter/material.dart';
import 'package:ttwui/components/app_color.dart';

class TweetDetail extends StatefulWidget {
  const TweetDetail() : super();

  @override
  State<StatefulWidget> createState() {
    return _TweetDetailState();
  }
}

class _TweetDetailState extends State<TweetDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tweet', style: TextStyle(color: AppColor.leading)),
          leading: null,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: SizedBox(
                          child: Image.asset('images/person1.jpg'),
                          width: 50,
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Nameeee',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.primary,
                                )),
                            const SizedBox(width: 20),
                            Text('@aaaaaa',
                                style: TextStyle(color: AppColor.hint)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'This is Tweet!!!!!!!!!! これはツイート！',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Text('1月10日 PM 1:00',
                          style: TextStyle(color: AppColor.hint)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: AppColor.primary,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(children: <Widget>[
                Text('8', style: TextStyle(fontWeight: FontWeight.w600)),
                Text('リツイート'),
                SizedBox(
                  width: 20,
                ),
                Text('10', style: TextStyle(fontWeight: FontWeight.w600)),
                Text('いいね'),
              ]),
            ),
            Divider(
              height: 1,
              color: AppColor.primary,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(children: <Widget>[
                Expanded(
                    child: Icon(Icons.chat_bubble_outline,
                        color: AppColor.primary)),
                Expanded(
                    child:
                        Icon(Icons.alternate_email, color: AppColor.primary)),
                Expanded(
                    child:
                        Icon(Icons.favorite_border, color: AppColor.primary)),
                Expanded(
                    child: Icon(Icons.open_in_new, color: AppColor.primary)),
              ]),
            ),
            Divider(
              height: 1,
              color: AppColor.primary,
            ),
          ],
        ));
  }
}
