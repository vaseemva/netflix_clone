import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home_page/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_icon_button.dart';

import 'package:netflix_clone/presentation/home_page/widgets/number_title_card.dart';

import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (context, value, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    return true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Column(
                          children: [
                            BackgroundCard(),
                            MainTitleCard(title: 'Released in the past year'),
                            kHeight,
                            MainTitleCard(title: 'Trending Now'),
                            kHeight,
                            NumberTitleCard(),
                            kHeight,
                            MainTitleCard(title: 'Tense Dramas'),
                            kHeight,
                            MainTitleCard(title: 'South Indian Cinemas')
                          ],
                        ),
                      ],
                    ),
                    // scrollnotifier.value == true
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://cdn141.picsart.com/270246178011211.png?r1024x1024',
                                width: 70,
                                height: 70,
                              ),
                              Spacer(),
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
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Tv shows",style: titleTextStyle,),
                              Text('Movies',style: titleTextStyle,),
                              Text('Categories',style: titleTextStyle,)
                            ],
                          )
                        ],
                      ),
                    )
                    // : kHeight
                  ],
                ),
              );
            },
          )),
    );
  }
}
