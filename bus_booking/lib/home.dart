// ignore_for_file: unnecessary_new, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:date_time_picker/date_time_picker.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController fromController = new TextEditingController();
  TextEditingController toController = new TextEditingController();
  TextEditingController dateController = new TextEditingController();

  final formats = DateFormat("yyyy-MM-dd");
  late DateTime journeys;

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          backgroundColor: const Color(0xFFD5436A),

          //App
        ),
        resizeToAvoidBottomInset: false,
        body: ListView(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
          children: <Widget>[
            Container(
                height: 170,
                width: 30,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                  // ignore: prefer_const_constructors
                  image: new AssetImage("assets/images/redBus.jpg"),
                  fit: BoxFit.fill,
                ))),
            SizedBox(
              height: 10.0,
            ),

            Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: fromController,
                      decoration: const InputDecoration(
                        labelText: 'From',
                      ),
                    ),
                    TextFormField(
                      controller: toController,
                      decoration: const InputDecoration(
                        labelText: 'To',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),

            Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Text("Journey Date"),
                      TextFormField(
                        controller: dateController,
                        decoration: const InputDecoration(
                          labelText: 'Journey Date',
                        ),
                      ),

                      // TextButton(
                      //     onPressed: () {
                      //       var LocaleType;
                      //       DatePicker.showDatePicker(context,
                      //           showTitleActions: true,
                      //           minTime: DateTime(2018, 3, 5),
                      //           maxTime: DateTime(2019, 6, 7),
                      //           onChanged: (date) {
                      //         print('change $date');
                      //       }, onConfirm: (date) {
                      //         print('confirm $date');
                      //       },
                      //           currentTime: DateTime.now(),
                      //           locale: LocaleType.en);
                      //     },
                      //     child: Text(
                      //       'show date time picker',
                      //       style: TextStyle(color: Colors.blue),
                      //     )),

                      // DateTimePicker(
                      //   initialValue: '',
                      //   firstDate: DateTime(2000),
                      //   lastDate: DateTime(2100),
                      //   dateLabelText: 'Date',
                      //   onChanged: (val) => print(val),
                      //   validator: (val) {
                      //     print(val);
                      //     return null;
                      //   },
                      //   onSaved: (val) => print(val),
                      // ),

                      // DateTimeField(
                      // format: formats,
                      // onShowPicker: (context, currentValue) {
                      //   return showDatePicker(
                      //       context: context,
                      //       initialDate: currentValue ?? DateTime.now(),
                      //       firstDate: DateTime(1970), lastDate: DateTime(2119));
                      // },
                      // onChanged: (dates) {
                      //   setState(() {
                      //     journeys = dates;
                      //   });
                      // },
                      // decoration: InputDecoration(
                      //     border: InputBorder.none,
                      //     prefixIcon: Icon(Icons.date_range),
                      //     suffixIcon: FlatButton(onPressed: (){
                      //       setState(() {
                      //         journeys = DateTime.now();
                      //       });
                      //     }, child: Text("Today"))
                      // ),
                      // ),

                      //     Card(
                      //  elevation: 2.0,
                      //  child: Padding(
                      //    padding: EdgeInsets.all(8.0),
                      //    child: Column(
                      //      mainAxisAlignment: MainAxisAlignment.start,
                      //      crossAxisAlignment: CrossAxisAlignment.start,
                      //      children: <Widget>[
                      //        Text("Journey Date"),
                      //        DateTimeField(
                      //          format: formats,
                      //          onShowPicker: (context, currentValue) {
                      //            return showDatePicker(
                      //                context: context,
                      //                initialDate: currentValue ?? DateTime.now(),
                      //                firstDate: DateTime(1970),
                      //               lastDate: DateTime(2119));
                      //          },
                      //          onChanged: (dates) {
                      //            setState(() {
                      //          journeys = dates;
                      //            });
                      //          },
                      //          decoration: InputDecoration(
                      //             border: InputBorder.none,
                      //              prefixIcon: Icon(Icons.date_range),
                      //              suffixIcon: FlatButton(
                      //                  onPressed: () {
                      //                    setState(() {
                      //                     journeys = DateTime.now();
                      //                    });
                      //                  },
                      //                  child: Text("Today"))),
                      //        ),
                      //      ],
                      //    ),
                      //  )),
                    ],
                  ),
                )),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: (SizedBox(
                  height: 65,
                  width: 150,
                  child: RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Text('Next', style: TextStyle(fontSize: 24)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                )),
              ),
            ),

            // Text(
            //   "Prefered Bus",
            //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
            // ),
            // Text(
            //   "Favorite Bus",
            //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
            // ),
          ],
        ));
  }
}

class Colours {
  static var magenta;
}















// import 'package:booking_bus_app/components/modules.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:intl/intl.dart';

// class Home extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return HomeState();
//   }
// }

// class HomeState extends State<Home> {
//   TextEditingController fromController = new TextEditingController();
//   TextEditingController toController = new TextEditingController();

//   final formats = DateFormat("yyyy-MM-dd");
//   DateTime journeys;

//   get EdgeInsets => null;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: Padding(
//             padding: EdgeInsets.all(0.0),
//             child: Row(
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.directions_bus,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text("redBus")
//               ],
//             ),
//           ),
//           backgroundColor: Colours.magenta,

//           //App
//         ),
//         //resizeToAvoidBottomPadding: false,
//         body: ListView(
//           padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
//           children: <Widget>[
//             Container(
//                 height: 150,
//                 width: 30,
//                 decoration: new BoxDecoration(
//                     image: new DecorationImage(
//                   image: new AssetImage("assets/images/redBus.jpg"),
//                   fit: BoxFit.fill,
//                 ))),
//             Card(
//               elevation: 2.0,
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Column(
//                   children: <Widget>[
//                     WidgetComponent.formField(
//                       borders: InputBorder.none,
//                       label: "From",
//                       prefix: Icon(Icons.location_city),
//                       controllers: fromController,
//                     ),
//                     WidgetComponent.formField(
//                       borders: InputBorder.none,
//                       label: "To",
//                       prefix: Icon(Icons.location_city),
//                       controllers: toController,
//                     ),
//                     SizedBox(
//                       height: 8.0,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 8.0,
//             ),
//             Card(
//                 elevation: 2.0,
//                 child: Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text("Journey Date"),
//                       DateTimeField(
//                         format: formats,
//                         onShowPicker: (context, currentValue) {
//                           return showDatePicker(
//                               context: context,
//                               initialDate: currentValue ?? DateTime.now(),
//                               firstDate: DateTime(1970),
//                               lastDate: DateTime(2119));
//                         },
//                         onChanged: (dates) {
//                           setState(() {
//                             journeys = dates;
//                           });
//                         },
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             prefixIcon: Icon(Icons.date_range),
//                             suffixIcon: FlatButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     journeys = DateTime.now();
//                                   });
//                                 },
//                                 child: Text("Today"))),
//                       ),
//                     ],
//                   ),
//                 )),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: WidgetComponent.buttons("Search Bus",
//                       textColor: Colors.white,
//                       bolds: FontWeight.bold,
//                       elevas: 2.0,
//                       radius: 20.0,
//                       padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
//                       coloring: Colours.magenta, onPressed: () {
//                     /*Navigator.pushReplacementNamed(context, "dashboard");*/
//                   }),
//                 )
//               ],
//             ),
//             // Text(
//             //   "Prefered Bus",
//             //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
//             // ),
//             // Text(
//             //   "Favorite Bus",
//             //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
//             // ),
//           ],
//         )
//         //CustomScrollView(
//         //slivers: <Widget>[
//         //   SliverGlueList(
//         //     data: null,
//         //     header: Text("Preferred Bus"),
//         //     builder:
//         //         (BuildContext context, entry, int i, bool first, bool last) {},
//         //   )
//         // ],
//         // ),

//         );
//   }
// }

// class Widget {
// }

// class ListView {
// }

