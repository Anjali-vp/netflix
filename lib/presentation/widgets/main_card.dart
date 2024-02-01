import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 250,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://image.tmdb.org/t/p/w600_and_h900_bestv2/mBaXZ95R2OxueZhvQbcEWy2DqyO.jpg",
          ),
        ),
      ),
    );
  }
}
