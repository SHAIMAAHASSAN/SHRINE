import 'package:flutter/material.dart';
import 'package:shrine/main.dart';
import 'package:shrine/screens/menuScreen.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(image: AssetImage("images/download.png"))),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('SHRINE'),
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              semanticLabel: 'menu',
            ),
            onPressed: () {
              RouteSettings routeSettings =
                  RouteSettings(arguments: {"text": ""});
              // TODO: Clear the text fields (101)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuPage(),
                  settings: routeSettings,
                ),
              );
              print('Menu button');
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  RouteSettings routeSettings =
                      RouteSettings(arguments: {"text": ""});
                  // TODO: Clear the text fields (101)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                      settings: routeSettings,
                    ),
                  );
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  RouteSettings routeSettings =
                      RouteSettings(arguments: {"text": ""});
                  // TODO: Clear the text fields (101)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                      settings: routeSettings,
                    ),
                  );
                },
                icon: Icon(Icons.tune))
          ],
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                SizedBox(
                    width: 200,
                    height: 200,
                    child: Image(image: AssetImage("images/download.png"))),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Thanks for using our products , Visit us again. ",
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
