import 'package:arya_digital/Movie_List/list_h11.dart';
import 'package:arya_digital/Movie_List/list_h2.dart';
import 'package:arya_digital/Movie_List/list_h3.dart';
import 'package:arya_digital/Movie_List/list_h4.dart';
import 'package:flutter/material.dart';
import 'package:arya_digital/navigation_pages/my_page.dart';

class ListVertical extends StatefulWidget {
  const ListVertical({super.key});

  @override
  State<ListVertical> createState() => _ListVerticalState();
}

class _ListVerticalState extends State<ListVertical> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const ListH11(),
      const Padding(
        padding: EdgeInsets.fromLTRB(7, 3, 7, 3),
        child: Text(
          'Continue Watching',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      const ListH2(),
      Padding(
        padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Watch for free',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyPage()));
              },
              child: const Text('more',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            )
          ],
        ),
      ),
      const ListH3(),
      const Image(
        image: AssetImage(
          'assets/landscape/land4.jpg',
        ),
        fit: BoxFit.cover,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Top 10 Movies',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyPage()));
              },
              child: const Text('more',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            )
          ],
        ),
      ),
      const ListH4(),
      Padding(
        padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('24*7 Live TV Channels',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyPage()));
              },
              child: const Text('more',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const Image(
            image: AssetImage(
              'assets/landscape/land2.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Web Series',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyPage()));
              },
              child: const Text('more',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const Image(
            image: AssetImage(
              'assets/landscape/land1.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]);
  }
}
