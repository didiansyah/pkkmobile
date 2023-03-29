import 'package:flutter/material.dart';
import 'package:pkkfirdaus/utils/constant.dart';
import 'package:pkkfirdaus/widgets/clickable_text.dart';
import 'package:pkkfirdaus/screens/components/news.dart';
import 'package:pkkfirdaus/screens/components/news_detail.dart';
import 'package:pkkfirdaus/utils/dummy_news.dart';
import 'package:pkkfirdaus/utils/news_tile.dart';
import 'package:intl/intl.dart';


class Kegiatan extends StatefulWidget {
  const Kegiatan({Key? key}) : super(key: key);

  @override
  State<Kegiatan> createState() => _KegiatanState();
}

class _KegiatanState extends State<Kegiatan> {
  bool isTrendingSelected = false;
  bool isBookmarkSelected = false;
  bool isFeaturedSelected = true;
  List<News> bookmarkedNews = [];
  final List<News> trendingNews =
      dummyNews.where((news) => news.isTrending == true).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Kegiatan",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  // alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClickableText(
                          title: 'Featured',
                          isActive: isFeaturedSelected,
                          handleClick: () {
                            setState(() {
                              isFeaturedSelected = true;
                              isBookmarkSelected = false;
                              isTrendingSelected = false;
                            });
                          }),
                      ClickableText(
                          title: 'Trending',
                          isActive: isTrendingSelected,
                          handleClick: () {
                            setState(() {
                              isFeaturedSelected = false;
                              isBookmarkSelected = false;
                              isTrendingSelected = true;
                            });
                          }),
                      ClickableText(
                          title: 'Bookmarked',
                          isActive: isBookmarkSelected,
                          handleClick: () {
                            setState(() {
                              isFeaturedSelected = false;
                              isBookmarkSelected = true;
                              isTrendingSelected = false;
                            });
                          }),
                    ],
                  ),
                ),
                if (isFeaturedSelected)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var currentNews = dummyNews[index];
                      return NewsTile(
                        id: currentNews.id,
                        imageAddress: currentNews.imageAddress,
                        title: currentNews.title,
                        text: currentNews.text,
                        date: DateFormat.MMMd().format(currentNews.date),
                        read: currentNews.read,
                        bookmarkedNews: bookmarkedNews,
                      );
                    },
                    itemCount: dummyNews.length,
                  ),

                if (isBookmarkSelected)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var currentNews = bookmarkedNews[index];
                      return NewsTile(
                        id: currentNews.id,
                        imageAddress: currentNews.imageAddress,
                        title: currentNews.title,
                        text: currentNews.text,
                        date: DateFormat.MMMd().format(currentNews.date),
                        read: currentNews.read,
                        bookmarkedNews: bookmarkedNews,
                      );
                    },
                    itemCount: bookmarkedNews.length,
                  ),
                if (isTrendingSelected)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var currentNews = trendingNews[index];
                      return NewsTile(
                        id: currentNews.id,
                        imageAddress: currentNews.imageAddress,
                        title: currentNews.title,
                        text: currentNews.text,
                        date: DateFormat.MMMd().format(currentNews.date),
                        read: currentNews.read,
                        bookmarkedNews: bookmarkedNews,
                      );
                    },
                    itemCount: trendingNews.length,
                  ),
                 ],
          ),
        ),
      ),
      ),
    );
  }
}