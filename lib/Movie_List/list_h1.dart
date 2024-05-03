import 'package:flutter/material.dart';

class ListH1 extends StatefulWidget {
  const ListH1({super.key});

  @override
  State<ListH1> createState() => _ListH1State();
}

class _ListH1State extends State<ListH1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
            width: MediaQuery.of(context).size.width,
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage(
                  'assets/landscape/land3.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
            width: MediaQuery.of(context).size.width,
            child: const ClipRRect(
              child: Image(
                image: AssetImage(
                  'assets/landscape/land2.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7,
            width: MediaQuery.of(context).size.width,
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
        ),
      ]),
    );
  }
}
