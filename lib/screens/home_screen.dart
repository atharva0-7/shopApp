import 'package:flutter/material.dart';
import 'package:shop_app/widgets/item_widget.dart';

import '../items_list.dart';

class HomeScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyShop"),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: itemList.map((item){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ItemWidget(item.imageUrl, item.title),
            );
          }).toList(),
        ),
      ),
    );
  }
}