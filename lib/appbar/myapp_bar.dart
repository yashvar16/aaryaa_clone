import 'package:flutter/material.dart';

class MyappBar extends StatelessWidget implements PreferredSizeWidget {
  const MyappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.black,
      // leading: IconButton(
      //   icon: const Icon(
      //     Icons.menu,
      //     color: Colors.grey,
      //   ),
      //   tooltip: 'Menu Icon',
      //   onPressed: () {},
      // ),
      centerTitle: true,
      title: const Image(
        image: AssetImage('assets/logo/arya.png'),
        height: 100,
        width: 300,
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),
      ],
      bottom: const TabBar(tabs: [
        Tab(
          child: Text('Home', style: TextStyle(color: Colors.white)),
        ),
        Tab(child: Text('Movies', style: TextStyle(color: Colors.white))),
        Tab(child: Text('Music', style: TextStyle(color: Colors.white))),
        Tab(child: Text('LiveTv', style: TextStyle(color: Colors.white))),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 70);
}
