
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

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