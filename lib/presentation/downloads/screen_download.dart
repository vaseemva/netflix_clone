import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({Key? key}) : super(key: key);
  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) => _widgetList[index],
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/w3s6XEDNVGq5LUlghqs6VlvsvL6.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/sv1xJUazXeYqALzczSZ3O6nkH75.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "we will download personalized selection of \n shows and movies for you,so there's \n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.45,
          child: Stack(alignment: Alignment.center, children: [
            Center(
              child: CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
            ),
            DownloadImageWidget(
              size: size,
              imageurl: imageList[0],
              angle: 20,
              margin: const EdgeInsets.only(left: 130, bottom: 50),
            ),
            DownloadImageWidget(
              size: size,
              imageurl: imageList[1],
              angle: -20,
              margin: const EdgeInsets.only(right: 130, bottom: 50),
            ),
            DownloadImageWidget(
              size: size,
              imageurl: imageList[2],
              margin: const EdgeInsets.only(top: 0),
            ),
          ]),
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
          width: double.infinity,
          child: MaterialButton(
            color: KButtonColorBlue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Setup',
                style: TextStyle(
                    fontSize: 20,
                    color: kWhiteColour,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: KButtonColorWhite,
          onPressed: () {},
          child: const Text(
            'See What you can download',
            style: TextStyle(
                fontSize: 20, color: kBlackColour, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColour,
        ),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    required this.size,
    required this.imageurl,
    this.angle = 0,
    required this.margin,
  }) : super(key: key);

  final Size size;
  final String imageurl;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width * 0.58,
        width: size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(imageurl))),
      ),
    );
  }
}
