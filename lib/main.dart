import 'package:android_loujain/pages/categories_screen.dart';
import 'package:android_loujain/pages/category_trips_screen.dart';
import 'package:android_loujain/pages/filter_screen.dart';
import 'package:android_loujain/pages/navigation_screen.dart';
import 'package:android_loujain/pages/trip_detailes_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English
        // Hebrew
        // ... other locales the app supports
      ],
     // home: NavigationScreen(),
      routes: {
       FilterScreen.filterScreen:(ctx)=>FilterScreen(),
        '/':(ctx )=>NavigationScreen(),
        '/category-trips':(ctx)=>CtegoryTripScreen(),
        
        TripDelailesScreen.screenRoute:(ctx)=>TripDelailesScreen()
      },
      title: "Social Network",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold),
              headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold),
            ),
      ),
    );
  }
}
