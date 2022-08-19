import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_screen.dart';

class FilterScreen extends StatefulWidget {
  static const filterScreen = '/filter-screen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
 bool _is_summer=false;
bool _is_winter=false;
bool _is_family=false;
  Widget switchList(String s, String t, var newValue, Function f) {
    return SwitchListTile(
        title: Text(s), subtitle: Text(t), value: newValue, onChanged: f);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'الفلترة',
            style: Theme.of(context).textTheme.headline6,
          ),
          titleSpacing: 50,
        ),
        drawer: DrawerScreen(),
        body: Column(
          children: [
            SizedBox(height: 50,),
            Expanded(
              child: ListView(
                children: [
                  switchList( 'الرحلات الصيفية فقط', 'اظهار الرحلات الصيفية فقط' ,  _is_summer,(value){
                    setState(() {
                     _is_summer=value; 
                    });
                    } ),
                  switchList('الرحلات الشتوية فقط','اظهار الرحلات الشتوية فقط', _is_winter ,(value){
                    setState(() {
                     _is_winter=value; 
                    });
                    } ),
                  switchList('الرحلات العائلية فقط' , 'اظهار الرحلات العائلية فقط' ,_is_family , (value){
                    setState(() {
                     _is_family=value; 
                    });
                    })
                ],
              ),
            )
          ],
        ));
  }
}
