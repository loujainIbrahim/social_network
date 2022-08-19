import 'package:flutter/cupertino.dart';

class Trip {
  final String id;
  final List categories;
  final String title;
  final String imageUrl;
  final List activities;
  final List program;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isForFamilies;
  final bool isInWinter;

  const Trip({
    @ required this.id,
   @ required this.categories,
   @ required this.title,
   @ required this.imageUrl,
   @ required this.activities,
   @ required this.program,
   @ required this.duration,
   @ required this.season,
   @ required this.tripType,
   @ required this.isInSummer,
   @ required this.isForFamilies,
   @ required this.isInWinter,
  });
}

enum TripType {
  Activities,
  Exploration,
  Recovery,
  Therapy
}
enum Season { Winter, Spring, Summer, Autumn }
