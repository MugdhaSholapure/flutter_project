import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bus_booking/signup.dart';
import 'package:bus_booking/main.dart';

class Common extends StatelessWidget {
  const Common({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.all(0.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Text("redBus")
              ],
            ),
          ),
          backgroundColor: const Color(0xFFD5436A)),
      body: ListView(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          children: <Widget>[
            Container(
                height: 120,
                width: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: new AssetImage("assets/images/splash.jpg"),
                  fit: BoxFit.fill,
                ))),
            Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 50.0),
                  child: ElevatedButton(
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text('Signup'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 0.0, top: 20.0, bottom: 170),
                  child: ElevatedButton(
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/main');
                    },
                    child: const Text('Login'),
                  ),
                ),
              ],
            )),
            Container(
                height: 140,
                width: 280,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: new AssetImage("assets/images/redBus_01.jpg"),
                  fit: BoxFit.fill,
                ))),
          ]
          // child:[ElevatedButton(
          //   // Within the `FirstScreen` widget
          //   onPressed: () {
          //     // Navigate to the second screen using a named route.
          //     Navigator.pushNamed(context, '/signup');
          //   },
          //   child: const Text('Signup Here'),
          // ),]
          ),
    );
  }
}

//             children: <Widget>[
//               SizedBox(height: 100),
//               Image.asset('assets/images/splash.jpg',
//                   width: 150,
//                   height: 100,
//                   fit: BoxFit.fill),
//               SizedBox(height: 0),
//               Image.asset('assets/images/splash.jpg'),
//               SizedBox(height: 20),
//               Text("Save what really interests you",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Ubuntu'
//                   )),
//               SizedBox(height: 20),
//               Text("Collect articles, videos or any online content",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontFamily: 'Nunito'
//                   )),
//               Text("you like.Settle in with them anytime, on any",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontFamily: 'Nunito'
//                   )),
//               Text("phone,table or browser",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontFamily: 'Nunito'
//                   )),
//               SizedBox(height: 40),
//               FlatButton.icon(onPressed: (){
//                 Navigator.pushNamed(context,SignupPage());},icon:Icon(Icons.person_add)
//                   , label: Text("Sign up"),
//                   color: Colors.teal[700],
//                   textColor: Colors.white),
//               SizedBox(height: 2),
//               FlatButton.icon(onPressed: (){
//                 Navigator.push(context,main());},icon: Icon(Icons.person)
//                 ,label: Text("Log In"), textColor: Colors.teal[700],)
//             ],
          