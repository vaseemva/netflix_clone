import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/62HCnUTziyWcpDaBO2i1DX17ljH.jpg" ),fit: BoxFit.cover),
                  borderRadius: kRadius),
            ),
          ],
        ),
        Positioned(
            bottom: -19,
            left: 13,
            child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: kWhiteColour,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                    fontSize: 120,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              ),
            ))
      ],
    );
  }
}
