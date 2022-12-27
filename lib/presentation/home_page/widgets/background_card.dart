import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/home_page/widgets/custom_icon_button.dart';

class BackgroundCard extends StatelessWidget {
const BackgroundCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
                  children: [
                    Container(
                      height: 600,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/bGlTTHAhLJXIXb1a0zyBEPqtxV9.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CustomIconButton(
                              icon: Icons.add,
                              title: 'My list',
                            ),
                            _playButton(),
                            const CustomIconButton(
                                icon: Icons.info, title: 'Info')
                          ],
                        ),
                      ),
                    )
                  ],
                );
                
  }
    TextButton _playButton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhiteColour)),
        icon: const Icon(
          Icons.play_arrow,
          size: 30,
          color: kBlackColour,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(color: kBlackColour, fontSize: 20),
          ),
        ));
  }
}