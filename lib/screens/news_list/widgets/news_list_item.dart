import 'package:flutter/material.dart';

import '../../news_pub/news_pub.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({Key? key, required this.image, required this.title})
      : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 27,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 156,
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 11,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3B81EA)),
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    color: Colors.white,
                    child: Image.asset('assets/images/icon-arrowright.png'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThirdPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
