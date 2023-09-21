import 'package:flutter/material.dart';
import 'package:shrine/screens/lastPage.dart';
import 'package:shrine/screens/shrineProducts.dart';

class SelectProduct extends StatelessWidget {
  ImageProvider image;
  String name;
  String data;
  SelectProduct(this.image, this.name, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(5),
      child: Column(

        children: [
          Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(7),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(image: image))),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black54),
                ),
                Container(
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(5),
                    child: Text(data,style:
                      TextStyle(fontSize: 18,color: Colors.black54),)),
                Row(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: const Text('CANCEL',style: TextStyle(color: Colors.blue),),
                      onPressed: () {
                        RouteSettings routeSettings =
                        RouteSettings(arguments: {"text": ""});

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShrineProducts(),
                            settings: routeSettings,
                          ),
                        );


                      },
                    ),

//
                    ElevatedButton(
                      child: const Text('Add Cart'),
                      onPressed: () {

                        RouteSettings routeSettings =
                        RouteSettings(arguments: {"text": ""});

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LastPage(),
                            settings: routeSettings,
                          ),
                        );


                      },
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
