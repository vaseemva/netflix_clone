import 'package:flutter/material.dart';

class Maintitle extends StatelessWidget {
const Maintitle({ Key? key, required this.title }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context){
    return  Text(
      title,
      style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}