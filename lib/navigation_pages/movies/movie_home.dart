import 'package:arya_digital/Movie_List/list_h2.dart';
import 'package:arya_digital/Movie_List/list_h4.dart';
import 'package:arya_digital/navigation_pages/movies/movie_card_widget.dart';
import 'package:arya_digital/navigation_pages/my_page.dart';
import 'package:flutter/material.dart';
import 'package:arya_digital/navigation_pages/movies/data/movies.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:arya_digital/navigation_pages/movies/pages/back_widget.dart';

class MovieHome extends StatelessWidget {
  final PageController controller = PageController();

  MovieHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          BackgroundWidget(controller: controller),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CarouselSlider(
                    items:
                        movies.map((e) => MovieCardWidget(movie: e)).toList(),
                    options: CarouselOptions(
                        enableInfiniteScroll: false,
                        viewportFraction: 0.75,
                        height: MediaQuery.of(context).size.height * 0.7,
                        enlargeCenterPage: true,
                        onPageChanged: (index, _) {
                          controller.animateToPage(
                            index,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInCirc,
                          );
                        }),
                  ),
                ],
              )),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Watch for free',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyPage()));
                  },
                  child: const Text('more',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: const ListH2(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Top 10 Movies',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyPage()));
                  },
                  child: const Text('more',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: const ListH4(),
            ),
          ])
        ],
      ),
    );
  }
}
