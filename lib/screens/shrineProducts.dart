import 'package:flutter/material.dart';
import 'package:shrine/models/ShrineCard.dart';
import 'package:shrine/itemData.dart';
import 'package:shrine/models/item.dart';
import 'package:shrine/main.dart';
import 'package:shrine/screens/menuScreen.dart';

class ShrineProducts extends StatefulWidget {
  const ShrineProducts({super.key});

  @override
  State<ShrineProducts> createState() => _ShrineProductsState();
}

class _ShrineProductsState extends State<ShrineProducts> {
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
        body: GridView.count(
          crossAxisCount: 3,
          // padding: const EdgeInsets.all(5.0),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 4.0 / 5.0,
          children: products
              .map((Data) => CardShrine(Data.image, Data.name, Data.data))
              .toList(),

          // CardShrine(),

          // CardShrine(),

          // CardShrine(),

          //CardShrine(),

          // CardShrine(),
        ),
      ),
    );
  }
}

//GridView.count(
//crossAxisCount: 2,
//padding: const EdgeInsets.all(16.0),
//childAspectRatio: 8.0 / 9.0,
// TODO: Build a grid of cards (102)
