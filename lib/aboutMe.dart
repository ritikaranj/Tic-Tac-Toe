import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class aboutMe extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Ritika.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
                height: 140.0,
                color:Colors.grey[800]
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ritika Ranjan',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold

              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'STUDENT',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'At DIT University',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold

              ),

            ),
            SizedBox(height: 10.0,),
            Text(
              'B.Tech CSE',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold

              ),
            ),

            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey,

                ),
                SizedBox(width: 10.0),
                Text(
                  'ritikaranjanpatna@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,

                  ),
                ),
                ],

            )

          ],
        ),

      ),
    );
  }

}

