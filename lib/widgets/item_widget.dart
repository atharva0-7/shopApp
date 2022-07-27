import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemWidget extends StatelessWidget {
  final String imageurl;
  final String title;
  ItemWidget(this.imageurl,this.title);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        
        footer: GridTileBar(
          
          backgroundColor: Colors.black54,
          title: Center(child: Text(title))),
        child: Image.network(
          alignment: Alignment.center,
          fit: BoxFit.fill,
          imageurl)),
    );
  }
}