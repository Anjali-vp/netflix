import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                '11',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
        ),
        Container(
          width: size.width - 50,
          height: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                videoWidget(),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "trolls band together",
                      style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButtonWidget(
                          icon: Icons.all_out_sharp,
                          title: "Remind me",
                          iconSize: 20,
                          textSize: 16,
                        ),
                        kWidth,
                        CustomButtonWidget(
                          icon: Icons.info,
                          title: "Info",
                          iconSize: 20,
                          textSize: 16,
                        ),
                        kWidth,
                      ],
                    )
                  ],
                ),
                kHeight,
                Text("Coming on friday"),
                kHeight,
                Text(
                  "trolls band teogether",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight,
                Text(
                  "Poppy discovers that Branch was once part of the boy band 'BroZone' with his brothers, Floyd, John Dory, Spruce and Clay. When Floyd is kidnapped, Branch and Poppy embark on a journey to reunite his two other brothers and rescue Floyd.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}

class videoWidget extends StatelessWidget {
  const videoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            Knewandhottemplate,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 0,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: KWhiteColor,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
