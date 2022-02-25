import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/constans/images_src.dart';
import 'package:flutter_application_8/constans/news_colors.dart';
import 'package:flutter_application_8/constans/news_text_style.dart';
import 'package:flutter_application_8/main.dart';
import '../news_list/news_list.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SecondPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: NewsColors.bgColor,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 43),
                child: Image.asset(ImagesSrc.logo),
              ),
              const Text(
                'Новости',
                style: NewsTextStyle.fontSize24fontW500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
