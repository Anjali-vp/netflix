
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 40,height: 150,),
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/qJiWKzdRScI5OcRQqOu3qdMZKXY.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
            bottom: -13,
            child: BorderedText(
              strokeWidth: 8.0,
              strokeColor: KWhiteColor,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 150,
                    color: kBlackColor,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black,
                ),
              ),
            ),
        ),
      ],
    );
  }
}
