// ignore_for_file: unnecessary_import

import 'package:bus_booking/home.dart';
import 'package:flutter/material.dart';
import 'package:bus_booking/color.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          ),
      home: const SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<SignupPage> createState() => _SignupPageState();
}

final _nameController = TextEditingController();
final _emailController = TextEditingController();

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Signup Here!",
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        //backgroundColor: Color.fromARGB(255, 216, 47, 69),
        backgroundColor: const Color(0xFFD5436A),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 150,
                  width: 150,
                  // ignore: unnecessary_new
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    image: AssetImage("assets/images/imageprofile.jpg"),
                    fit: BoxFit.fill,
                  )))),
          Padding(
            // padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            // child: TextFormField(
            //   controller: _nameController,
            //   decoration: const InputDecoration(
            //     labelText: 'Name',
            //   ),
            //   style: const TextStyle(
            //     fontSize: 24.0,
            //     color: Colors.black,
            //   ),
            // ),
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 2.5,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(hintText: 'UserName'),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            // padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            // child: TextFormField(
            //   controller: _emailController,
            //   decoration: const InputDecoration(
            //     labelText: 'Email',
            //   ),
            //   style: const TextStyle(
            //     fontSize: 24.0,
            //     color: Colors.black,
            //   ),
            // ),
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 2.5,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                    height: 50,
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(hintText: 'Email'),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 2.5,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                    height: 50,
                    child: TextFormField(
                      controller: _emailController,
                      decoration:
                          const InputDecoration(hintText: 'Phone Number'),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: SizedBox(
              height: 65,
              width: 150,
              child: RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  child: const Text('Next', style: TextStyle(fontSize: 24)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
