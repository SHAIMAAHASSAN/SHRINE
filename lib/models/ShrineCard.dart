import 'package:flutter/material.dart';
import 'package:shrine/screens/menuScreen.dart';
import 'package:shrine/screens/selectProduct.dart';
import 'package:shrine/screens/shrineProducts.dart';
import 'dart:ui';

class CardShrine extends StatelessWidget {
  ImageProvider image;
  String name;
  String data;
  CardShrine(this.image, this.name, this.data);
  void selectProduct(BuildContext cont){
    Navigator.of(cont).push(MaterialPageRoute(builder: (route)=> SelectProduct(image, name, data),),);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectProduct(context)
      ,
      child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.all(5),
                      child: Text(data)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
