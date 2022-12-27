import 'package:flutter/material.dart';

class videoWidget extends StatelessWidget {
  const videoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            "https://www.filmibeat.com/img/2020/04/mammootty-films-to-watch-out-for-2-1586648685.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.volume_off)),
          ),
        ),
      ],
    );
  }
}