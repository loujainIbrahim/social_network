import 'package:android_loujain/models/trip.dart';
import 'package:android_loujain/pages/trip_detailes_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  const TripItem(
      {@required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.tripType,
      @required this.season,@required this.id});
  String get getSeason {
    if (season == Season.Autumn) {
      return 'فصل خريف';
    }
    if (season == Season.Spring) {
      return ' فصل ربيع';
    }
    if (season == Season.Summer) {
      return 'فصل صيف ';
    }
    if (season == Season.Winter) {
      return 'شتاء ';
    }
  }

  String get getTrip {
    if (tripType == TripType.Activities) {
      return 'أنشطة';
    }
    if (tripType == TripType.Exploration) {
      return 'استكشاف';
    }
    if (tripType == TripType.Recovery) {
      return 'نقاهة ';
    }
    if (tripType == TripType.Therapy) {
      return ' معالجة ';
    }
  }

  selectTrip(context) {
    Navigator.pushNamed(context, TripDelailesScreen.screenRoute, arguments:id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Container(
                  height: 250,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.8)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.6, 1])),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade, //ازا كان العنوان طويل بيختفي
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 6),
                      Text('$duration أيام')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 6),
                      Text(getSeason)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 6),
                      Text(getTrip)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
