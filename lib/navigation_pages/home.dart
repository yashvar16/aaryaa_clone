import 'package:arya_digital/appbar/my_drawer.dart';
import 'package:arya_digital/appbar/myapp_bar.dart';
import 'package:arya_digital/navigation_pages/movies/movie_home1.dart';
import 'package:flutter/material.dart';
import 'package:arya_digital/Movie_List/list_vertical.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const MyappBar(),
        drawer: const MyDrawer(),
        body: TabBarView(children: [
          const ListVertical(),
          MovieHome1(),
          const ListVertical(),
          const ListVertical(),
        ]),
      ),
    );
  }
}
