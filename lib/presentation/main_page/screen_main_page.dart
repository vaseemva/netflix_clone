import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/screen_download.dart';
import 'package:netflix_clone/presentation/fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_clone/presentation/home_page/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
final _pages=[
  ScreenHome(),
  ScreenNewAndHot(),
  ScreenFastLaughs(),
  ScreenSearch(),
  ScreenDownload()
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SafeArea(
      child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index, _) {
          return _pages[index];
        },),
    ),
      bottomNavigationBar:const BottomNavigationWidget(),
    );
  }
}