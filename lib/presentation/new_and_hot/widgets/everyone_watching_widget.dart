
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "bridgerton",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                kHeight,
                Text("Poppy discovers that Branch was once part of the boy band 'BroZone' with his brothers, Floyd, John Dory, Spruce and Clay. When Floyd is kidnapped, Branch and Poppy embark on a journey to reunite his two other brothers and rescue Floyd.",
                style: TextStyle(
                color: Colors.grey,
                ),
                ),
                kHeight50,
                videoWidget(),
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButtonWidget(
                          icon: Icons.share,
                          title: "Share",
                          iconSize: 25,
                          textSize: 16,
                          ),
                          kWidth,
                          CustomButtonWidget(
                          icon: Icons.add,
                          title: "My list",
                          iconSize: 25,
                          textSize: 16,
                          ),
                          kWidth,
                          CustomButtonWidget(
                          icon: Icons.play_arrow,
                          title: "Play",
                          iconSize: 25,
                          textSize: 16,
                          ),
                  ],
                )
    
      ],
    );
  }
}

