import 'package:flutter/material.dart';
import 'package:arya_digital/navigation_pages/movies/model/movie.dart';
import 'package:arya_digital/navigation_pages/movies/data/movies.dart';

class BackgroundWidget extends StatelessWidget {
  final PageController controller;

  const BackgroundWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => PageView.builder(
        reverse: true,
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          final movie = movies[index];

          return buildBackground(context: context, movie: movie);
        },
        itemCount: movies.length,
      );

  Widget buildBackground(
          {required BuildContext context, required Movie movie}) =>
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            child: Image.asset(movie.imageUrl, fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.20, 0.80],
                colors: [
                  Colors.black.withOpacity(0.0001),
                  Colors.black,
                ],
              ),
            ),
          )
        ],
      );
}
