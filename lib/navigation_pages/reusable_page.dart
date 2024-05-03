import 'package:flutter/material.dart';
//import 'package:arya_digital/appbar/my_navigation.dart';

class ReusablePage extends StatelessWidget {
  final String reusable;
  const ReusablePage({super.key, required this.reusable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                reusable,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: MyNavigation(),
    );
  }
}
