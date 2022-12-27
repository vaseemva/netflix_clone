import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/7l3war94J4tRyWUiLAGokr3ViF2.jpg")),
          borderRadius: kRadius),
    );
  }
}
