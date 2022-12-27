import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/fast_laughs/widgets/video_list_item.dart';


class ScreenFastLaughs extends StatelessWidget {
const ScreenFastLaughs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) => VideoListItem(index: index,)),
      )),
    );
  }
}