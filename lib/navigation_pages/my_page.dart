import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(children: [
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
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
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
      ]),
      //Text('1'),
    );
  }
}
