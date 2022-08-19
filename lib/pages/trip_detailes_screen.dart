import 'package:android_loujain/app_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripDelailesScreen extends StatelessWidget {
  static const screenRoute = '/trip-detial';
  Widget buildName(context, String s) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        alignment: Alignment.topRight,
        child: Text(s, style: Theme.of(context).textTheme.headline5));
  }

  Widget buildCointainerToList(Widget s) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 200,
      child: s,
    );
  }

  @override
  Widget build(BuildContext context) {
    final String tripId = ModalRoute.of(context).settings.arguments as String;
    final tripItem = Trips_data.firstWhere((trip) =>
        trip.id ==
        tripId); //هنا نخرن الشيء الذي يحقق الشرط وهو في هذه الحالة عبارة عن رحلة اي اوبجيكت

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${tripItem.title}',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                width: double.infinity,
                child: Image.network(tripItem.imageUrl, fit: BoxFit.cover)),
            buildName(context, 'الانشطة'),
            SizedBox(height: 10),
            buildCointainerToList(
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text('${tripItem.activities[index]}'),
                    
                  ),
                ),
                itemCount: tripItem.activities.length,
              ),
            ),
            SizedBox(height: 10),
            buildName(context, 'البرنامج اليومي'),
            SizedBox(height: 10),
            buildCointainerToList(ListView.separated(
              itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('${index+1}'),
                  ),
                  title: Text('${tripItem.program[index]}')
                  ),
              itemCount: tripItem.program.length,
              separatorBuilder: (context,index)=>Divider(color: Colors.black.withOpacity(0.3),),
              
            ),
            
            ),
            SizedBox(height: 100,)
          ],
        ),
        
      ),
    );
  }
}
