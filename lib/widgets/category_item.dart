import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int id;
  final String image;
  final String title;

  const CategoryItem({@required this.id,@required this.image, @required this.title});
  void selectWidgit(context){
    Navigator.pushNamed(context,'/category-trips',
    arguments: {
      'id':id,
      'title':title
    } );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>selectWidgit(context) ,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                image,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}
