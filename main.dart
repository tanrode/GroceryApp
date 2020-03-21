import 'package:flutter/material.dart';
import './Buttons.dart';
import './bill.dart';

void main()
{
  runApp(InfoApp());
}

class InfoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InfoAppState();
  }
}

class InfoAppState extends State<InfoApp> {

  var cost=0.0;
  var gen=false;
  var arr=[
    {'it':'Wheat Flour','price':500.00},
    {'it':'Rice','price':270.50},
    {'it':'Spinach','price':35.20},
    {'it':'Puffed Rice','price':162.75},
  ];  
  void _addCost(double itemCost)
  {
    setState(() {
      cost+=itemCost;
    });
  }

  void getBill()
  {
    setState(() {
      gen=true;
    });
  }

  void restart()
  {
    setState(() {
      cost=0.0;
      gen=false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
                  backgroundColor: Color.fromRGBO(0, 0, 200, 0.8),
                  title: Text('ApnaBazaar'),
                  centerTitle: true,
        ),
        body: gen==false ? Column(
                children:[
                     //RaisedButton(child: Text('Wheat Flour',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),onPressed: null,color: Color.fromRGBO(0, 255, 0, 0.7),),
                     Buttons(addCost: _addCost,itemName: arr[0]['it'], itemCost: arr[0]['price']),
                     Buttons(addCost: _addCost,itemName: arr[1]['it'], itemCost: arr[1]['price']),
                     Buttons(addCost: _addCost,itemName: arr[2]['it'], itemCost: arr[2]['price']),
                     Buttons(addCost: _addCost,itemName: arr[3]['it'], itemCost: arr[3]['price']),
                     RaisedButton(child: Text('Get Bill'),onPressed: getBill),
                ],
        ): Bill(cost,restart), 
      ),
    );
  }
}