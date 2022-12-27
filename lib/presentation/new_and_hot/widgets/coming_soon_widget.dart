import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_icon_button.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 450,
          width: 50, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const videoWidget(),
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bilal Returns',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  kWidth,
                  Row(
                    children: const [
                      CustomIconButton(
                        icon: Icons.notifications_active,
                        title: 'Remind me',
                        iconSize: 20,
                        textSize: 10,
                      ),
                      kWidth,
                      CustomIconButton(
                        icon: Icons.info,
                        title: 'Info',
                        iconSize: 20,
                        textSize: 10,
                      ),
                      kWidth
                    ],
                  ),
                ],
              ),
              Text('Coming on Friday'),
              kHeight,
              Text(
                'Bilal Returns',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              Text(
                "The megastar is all set to play his celebrated character Bilal John Kurissinkal once again in the upcoming project Bilal, cinematographer-director Amal Neerad is expected to start rolling once the coronavirus scare ends",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}


