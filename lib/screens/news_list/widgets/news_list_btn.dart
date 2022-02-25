import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/constans/news_colors.dart';
import 'package:flutter_application_8/constans/news_text_style.dart';

class NewsListBtn extends StatelessWidget {
  const NewsListBtn({Key? key, required this.title, required this.clicked})
      : super(key: key);

  final String title;
  final bool clicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            color: clicked ? NewsColors.bgBtnActiveColor : Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Text(
          title,
          style: clicked
              ? NewsTextStyle.fontSize14fontW400ColorWhite
              : NewsTextStyle.fontSize14fontW400ColorGrey,
        ),
      ),
      onTap: () {
        print(clicked
            ? NewsTextStyle.fontSize14fontW400ColorWhite
            : NewsTextStyle.fontSize14fontW400ColorGrey);
      },
    );
  }
}
