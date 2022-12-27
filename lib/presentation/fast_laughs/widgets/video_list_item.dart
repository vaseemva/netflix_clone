import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index % Colors.accents.length],
      ),
      //left side
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.volume_off)),
              ),
              //right side
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/sv1xJUazXeYqALzczSZ3O6nkH75.jpg"),
                      radius: 30,
                    ),
                  ),
                  VideoActionsWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                  VideoActionsWidget(icon: Icons.add, title: 'My List'),
                  VideoActionsWidget(icon: Icons.share, title: 'Share'),
                  VideoActionsWidget(icon: Icons.play_arrow, title: 'Play')
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(title),
        ],
      ),
    );
  }
}
