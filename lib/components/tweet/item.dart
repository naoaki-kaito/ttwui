import 'package:flutter/material.dart';
import 'package:ttwui/components/app_color.dart';

class TweetItem extends StatefulWidget {
  const TweetItem() : super();

  @override
  State<StatefulWidget> createState() {
    return _TweetItem();
  }
}

class _TweetItem extends State<TweetItem> {
  @override
  Widget build(BuildContext context) {
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
                        Icon(Icons.chat, color: AppColor.hint),
                        SizedBox(width: 20),
                        Icon(Icons.autorenew, color: AppColor.hint),
                        SizedBox(width: 20),
                        Icon(Icons.favorite_border, color: AppColor.hint)
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
