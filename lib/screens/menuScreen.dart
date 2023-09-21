import 'package:flutter/material.dart';
import 'package:shrine/main.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Row(

              children: [SizedBox(height:50,width:50,child: Image(image: AssetImage("images/download.png"))),
                Padding(
                  padding:  EdgeInsets.all(10),
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
          body: Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.all(70),
            //    margin: EdgeInsets.all(50),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Text(
                    "All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                        decoration: TextDecoration.underline,
                    color: Colors.grey),
                  )),
                  Padding(
                    padding:  EdgeInsets.all(10),
                    child: Text("CLOTHES",style: TextStyle(

                        fontSize: 30,
                        color: Colors.grey),),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(15),
                    child: Text("ACCESSORIES",style: TextStyle(

                        fontSize: 30,
                        color: Colors.grey),),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(15),
                    child: Text("SHOES",style: TextStyle(

                        fontSize: 30,
                        color: Colors.grey),),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(15),
                    child: Text("OTHERS",style: TextStyle(

                        fontSize: 30,
                        color: Colors.grey),),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
