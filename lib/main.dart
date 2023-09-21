import 'package:flutter/material.dart';
import 'package:shrine/screens/shrineProducts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final myController_name = TextEditingController();
  final myController_password = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController_name.dispose();
    myController_password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(
                  width: 200,
                  height: 200,

                  child: Image(image: AssetImage("images/diamonds.png"))),
              Container(margin: EdgeInsets.all(10),
                child: TextField(
                  controller: myController_name,
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(margin: EdgeInsets.all(10),
                child: TextField(

                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                ),
              ),

              // TODO: Add buttons (101)
              Container(margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                child: Row( crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('CANCEL'),
                      onPressed: () {

                      },
                    ),

                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(
                  child: const Text('NEXT'),
                  onPressed: () {

                    RouteSettings routeSettings =
                    RouteSettings(arguments: {"text": myController_name.text});
                    // TODO: Clear the text fields (101)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShrineProducts(),
                        settings: routeSettings,
                      ),
                    );


                  },
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
