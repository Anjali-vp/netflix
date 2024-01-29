import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageUrl="https://image.tmdb.org/t/p/w600_and_h900_bestv2/pfte7wdMobMF4CVHuOxyu6oqeeA.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.5,
          children: 
            List.generate(20, (index) {
              return const MainCard();
            })
          
          ),
          ),

      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
         image:
         DecorationImage(
           image: NetworkImage(imageUrl),
           fit: BoxFit.cover,
         ),
         borderRadius: BorderRadius.circular(7)
       ),
    );
  }
}