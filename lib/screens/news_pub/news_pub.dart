import 'package:flutter/material.dart';
import 'package:flutter_application_8/constans/images_src.dart';
import 'package:flutter_application_8/constans/news_colors.dart';
import 'package:intl/intl.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    final format = DateFormat('dd.MM.yy');
    final dateToday = format.format(date);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: NewsColors.bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: NewsColors.bgColor,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          // title: Text('test'),
        ),
        body: Column(
          //sadfsadf
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Text(
                'Управление по контролю, надзору за водными ресурсами и объектами (далее УКНВРиО) 29 июля 2020 года провело рабочее видео-совещание.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3B81EA)),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 18),
              child: Text(
                'Дата ${dateToday}',
                style: TextStyle(color: Color(0xffAEAEAE), fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 6),
              child: Image.asset(
                ImagesSrc.newsPostImg,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 6),
              child: Image.asset(
                ImagesSrc.newsPostImgTwo,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
