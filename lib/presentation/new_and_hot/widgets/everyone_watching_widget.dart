import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_icon_button.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryonewatchingWidget extends StatelessWidget {
  const EveryonewatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight20,
        const Text(
          'Bilal Returns',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(
          "The megastar is all set to play his celebrated character Bilal John Kurissinkal once again in the upcoming project Bilal, cinematographer-director Amal Neerad is expected to start rolling once the coronavirus scare ends",
          style: TextStyle(color: Colors.grey),
        ),
        kHeight50,
        videoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomIconButton(
              icon: Icons.share,
              title: 'Share',
              iconSize: 22,
              textSize: 12,
            ),
            kWidth,
            CustomIconButton(
              icon: Icons.add,
              title: 'My List',
              iconSize: 22,
              textSize: 12,
            ),
            kWidth,
            CustomIconButton(
              icon: Icons.play_arrow,
              title: 'Play',
              iconSize: 22,
              textSize: 12,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}