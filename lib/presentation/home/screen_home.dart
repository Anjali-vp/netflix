import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import '../widgets/main_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context,index,_){
        return  NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          print(direction);
          if(direction == ScrollDirection.reverse){
            scrollNotifier.value = false;
          }else if(direction == ScrollDirection.forward){
            scrollNotifier.value = true;
          }
          return true;
        },
        child: Stack(
          children: [
            ListView(
              children: [
                
                BackgroundCard(),
                MainTitleCard(title: "Released in the past year",),
                kHeight,
                MainTitleCard(title: "Trending Now",),
                kHeight,
                NumberTitleCard(),
                kHeight,
                MainTitleCard(title: "Tense Dramas",),
                kHeight,
                MainTitleCard(title: "South Indian",),
              ],
            ),
            scrollNotifier.value == true? AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              width: double.infinity,
              height: 80,
              color: Colors.black.withOpacity(0.3),
              child: Column(children: [
                Row(
                  children: [
                    Image.network("https://images.ctfassets.net/y2ske730sjqp/5QQ9SVIdc1tmkqrtFnG9U1/de758bba0f65dcc1c6bc1f31f161003d/BrandAssets_Logos_02-NSymbol.jpg?w=940",
                    width: 60,height:60 ,
                    ),
                    const Spacer (),
                    const Icon(
                      Icons.cast,
                      color: KWhiteColor,
                      size: 30,
                    ),
                    kWidth,
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.blue,
                    ),
                    kWidth,
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("TV Shows",style: kHomeTitleText,),
                    Text("Movies",style: kHomeTitleText,),
                    Text("Categories",style: kHomeTitleText,),
                  ],
                )
             ],
             ),
            ):kHeight,
          ],
        ),
      );
      },
      )
    );
  }

 
}


