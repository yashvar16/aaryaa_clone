import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListH11 extends StatefulWidget {
  const ListH11({super.key});

  @override
  State<ListH11> createState() => _ListH11State();
}

class _ListH11State extends State<ListH11> {
  List imageList = [
    {"id": 1, "image_path": 'assets/landscape/land2.jpg'},
    {"id": 2, "image_path": 'assets/landscape/land3.jpg'},
    {"id": 3, "image_path": 'assets/landscape/land2.jpg'},
    {"id": 4, "image_path": 'assets/landscape/land2.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const MyPage()));
            },
            child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                )),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: currentIndex == entry.key ? 17 : 7,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? Colors.red
                            : Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ]);
  }
}
