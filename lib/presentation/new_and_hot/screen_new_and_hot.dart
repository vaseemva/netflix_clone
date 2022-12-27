import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_icon_button.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyone_watching_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text('New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth
            ],
            bottom: TabBar(
                labelColor: kBlackColour,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhiteColour, borderRadius: kradius30),
                unselectedLabelColor: kWhiteColour,
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: ('🍿 Coming soon'),
                  ),
                  Tab(
                    text: ("👀 Every one's Watching "),
                  ),
                ]),
          ),
        ),
        body: TabBarView(
            children: [_buildComingSoon(), _buildEveryOneWatching()]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryOneWatching() {
    return ListView.builder(itemCount: 10,itemBuilder: (context, index) => Every onewatchingWidget(),);
  }
}


