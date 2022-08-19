import 'package:android_loujain/models/caregor.dart';
import 'package:android_loujain/pages/trip_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_data.dart';

class CtegoryTripScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final CategoryId = routeArguments['id'];
    final CategoryTitle = routeArguments['title'];
    List filterTrip = Trips_data.where((trip)=>trip.categories.contains(CategoryId)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => TripItem(title:filterTrip[index].title,imageUrl:filterTrip[index].imageUrl, duration: filterTrip[index].duration,tripType: filterTrip[index].tripType, season: filterTrip[index].season,
        id:filterTrip[index].id),
        itemCount: filterTrip.length,
      ),
    );
  }
}
