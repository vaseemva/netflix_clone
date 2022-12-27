import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';
import 'package:netflix_clone/presentation/search/widgets/search_text_title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  SearchTextTitle(title: "Top Searches",),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchesTile(),
              separatorBuilder: (context, index) => kHeight20,  
              itemCount: 10),
        )
      ],
    );
  }
}



class TopSearchesTile extends StatelessWidget {
  const TopSearchesTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imagelink), fit: BoxFit.cover)),
        ),
        Expanded(child: Text('Movie Name',style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),)),
        CircleAvatar(
          backgroundColor: kWhiteColour,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColour,
            radius: 23,
            child: Icon(Icons.play_circle_rounded),
          ),
        )
      ],
    );
  }
}
