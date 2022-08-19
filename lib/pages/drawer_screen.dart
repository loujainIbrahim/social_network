import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'filter_screen.dart';

class DrawerScreen extends StatelessWidget {
  Widget buildList(
      BuildContext context, String title, IconData icon,Function function) {
    return ListTile(
      leading: Icon(icon,color: Colors.blue,size: 30,),
      title: Text(title,style: TextStyle(fontSize: 24,
      fontFamily: 'ElMessiri',
      fontWeight: FontWeight.bold),),
      onTap: function,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
        height: 100,
        width: double.infinity,
        child:
            Text('دليلك السياحي', style: Theme.of(context).textTheme.headline6),
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20),
        color: Colors.amber,
      ),
      SizedBox(height: 20,),
      buildList(context,'الرحلات',Icons.card_travel,()=>Navigator.pushReplacementNamed(context,'/')),
      buildList(context,'الفلترة',Icons.filter_list,()=>Navigator.pushReplacementNamed(context,FilterScreen.filterScreen))
    ]));
  }
}
