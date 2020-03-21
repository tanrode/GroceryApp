import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function addCost;
  final String itemName;
  final double itemCost;
  Buttons({this.addCost,this.itemName,this.itemCost});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(10),
      color: Color.fromRGBO(0, 255, 0, 0.7),
      child: RaisedButton(child: Text(itemName),onPressed: () => addCost(itemCost)),
    );
  }
}