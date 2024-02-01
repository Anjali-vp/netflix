import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [const _SmartDownloads(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.separated(
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
          itemCount: _widgetList.length),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    // // WidgetsBinding.instance!.addPostFrameCallback((_) {
    // //   BlocProvider.of<DownloadsBloc>(context).add(const DownloadsEvent.getDownloadsImage());
    // //
    // // });
    // BlocProvider.of<DownloadsBloc>(context).add(const DownloadsEvent.getDownloadsImage());

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads For You ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: KWhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "we will download a personalized selection of\n movies and shows for you, so there is always\n something to watch",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: size.width * 0.3,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        DownloadsImageWidget(
                          imageList: state.downloads?.isNotEmpty == true
                              ? '$imageAppendUrl${state.downloads?[0].posterPath}'
                              : 'fallback_image_url', // provide a fallback image URL or handle the case when downloads is empty
                          margin: const EdgeInsets.only(left: 89),
                          angle: 30,
                          size: Size(size.width * 0.35, size.width * 0.5),
                        ),
                        DownloadsImageWidget(
                          imageList: state.downloads?.isNotEmpty == true
                              ? '$imageAppendUrl${state.downloads?[1].posterPath}'
                              : 'fallback_image_url', // provide a fallback image URL or handle the case when downloads is empty
                          margin: const EdgeInsets.only(right: 89),
                          angle: -30,
                          size: Size(size.width * 0.35, size.width * 0.5),
                        ),
                        DownloadsImageWidget(
                          imageList: state.downloads?.isNotEmpty == true
                              ? '$imageAppendUrl${state.downloads?[2].posterPath}'
                              : 'fallback_image_url', // provide a fallback image URL or handle the case when downloads is empty
                          margin: const EdgeInsets.only(bottom: 10),
                          angle: 0,
                          size: Size(size.width * 0.35, size.width * 0.5),
                          radius: 10,
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: MaterialButton(
            onPressed: () {},
            color: KButtonColorBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            minWidth: 600,
            height: 40,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set Up",
                style: TextStyle(
                    color: KWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: KButtonColorWhite,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: KWhiteColor,
        ),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    //required this.size,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  //final Size size;
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            margin: margin,
            width: size.width,
            height: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                //fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
