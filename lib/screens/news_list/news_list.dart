import 'package:flutter/material.dart';
import 'package:flutter_application_8/constans/images_src.dart';
import 'package:flutter_application_8/constans/news_colors.dart';
import 'package:flutter_application_8/constans/news_text_style.dart';
import 'package:flutter_application_8/screens/news_list/widgets/news_list_btn.dart';

import '../news_pub/news_pub.dart';
import 'widgets/news_list_item.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String inkwell = 'dd';

  List<String> buttonText = ['Все', 'Интернет', 'Звонки'];
  List<bool> selectBtn = [true, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: NewsColors.bgColor,
        appBar: AppBar(
          backgroundColor: NewsColors.bgColor,
          shadowColor: Colors.transparent,
          title: const Text(
            'Новости',
            style: NewsTextStyle.fontSize20fontW700,
          ),
          centerTitle: false,
          actions: [
            PopupMenuButton(
                icon: const Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text("KG"),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("RU"),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Text("EN"),
                    ),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    print("KG selected.");
                  } else if (value == 1) {
                    print("RU selected.");
                  } else if (value == 2) {
                    print("EN selected.");
                  }
                }),
          ],
        ),
        body: SizedBox(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 33),
                child: Row(
                  children: [
                    NewsListBtn(
                      title: buttonText[0],
                      clicked: selectBtn[0],
                    ),
                    NewsListBtn(
                      title: buttonText[1],
                      clicked: selectBtn[1],
                    ),
                    NewsListBtn(
                      title: buttonText[2],
                      clicked: selectBtn[1],
                    ),
                  ],
                ),
              ),
              Column(
                children: const [
                  NewsListItem(
                    title: 'Незаконное строительство',
                    image: ImagesSrc.newsImg,
                  ),
                  NewsListItem(
                    title:
                        'Управление по контролю, надзору за водными ресурсами ...',
                    image: ImagesSrc.newsImg,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
