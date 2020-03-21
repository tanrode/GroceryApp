import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  final double amt;
  final Function restart;
  Bill(this.amt,this.restart);
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(children: [
          Text('Your Bill Amount is Rs.'+amt.toString()+'\n',textAlign: TextAlign.center,style: TextStyle(fontSize:40, fontWeight: FontWeight.bold,),),
          RaisedButton(child: Text('Shop Again'),onPressed: restart),
        ],
        ),
    );
  }
}