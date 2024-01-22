import 'package:flutter/material.dart';
import 'atasozler.dart';

Widget atasozuCard(Atasozler atasozu , Function sil){
  return Card(
    margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          atasozu.soz,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.redAccent[200],
          ),
        ),
        SizedBox(height:6.0),
        Text(
          atasozu.ekleyen,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5,),
    ElevatedButton(onPressed: (){
      sil();
    }, child: Icon(Icons.delete))

      ],
    ),
  );
}