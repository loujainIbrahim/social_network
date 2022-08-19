import 'package:android_loujain/app_data.dart';
import 'package:android_loujain/widgets/category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:android_loujain/app_data.dart';
class CategoryScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    
    return  GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent:200,
        childAspectRatio: 7/8,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
         ),
         itemCount: Categories_data.length,
          itemBuilder: (BuildContext,index)=>CategoryItem(id:Categories_data[index]['id'], image:Categories_data[index]['image'],title:Categories_data[index]['title'])
          );
  }
}
