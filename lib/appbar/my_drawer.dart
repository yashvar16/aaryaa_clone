import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: DrawerHeader(
              child: Image(image: AssetImage('assets/logo/arya.png')),
            ),
          ),
          const ListTile(
            title: Text(
              'Account Details',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              'Watch List',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              'Purchases',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              'Downloads',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              'Go Premium',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Divider(
              //height: 4, // thickness of the line
              color: Colors.white, // color of the line
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image(
                    image: const AssetImage('assets/logo/facebook.png'),
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.height / 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image(
                    image: const AssetImage('assets/logo/insta.png'),
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.height / 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image(
                    image: const AssetImage('assets/logo/twitter.png'),
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.height / 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image(
                    image: const AssetImage('assets/logo/youtube.png'),
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.height / 25,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
