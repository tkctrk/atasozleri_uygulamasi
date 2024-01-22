import'package:flutter/material.dart';
import 'atasozler.dart';
import 'atasozuTemplate.dart';
void main()=>runApp(MaterialApp(
  home :AtasozleriWidget(),
  theme: ThemeData(
    primaryColor: Colors.orange,
    
  ),
));
class AtasozleriWidget extends StatefulWidget {
  @override
  _AtasozleriWidgetState createState() =>_AtasozleriWidgetState();
}
class _AtasozleriWidgetState extends State<AtasozleriWidget> {
  List<Atasozler> atasozleri=[
  
 Atasozler(soz: 'Damlaya damlaya göl olur', ekleyen: 'Ali'),
 Atasozler(soz: 'Sakla Samanı Gelir Zamanı', ekleyen: 'Veli'),
 Atasozler(soz: 'Elden Gelen Öğün Olmaz', ekleyen: 'Osman'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF20bf6b),
      appBar: AppBar(
        title: Text(
            'Atasozleri App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: atasozleri.map((s) => atasozuCard(s, (){
          setState(() {
            atasozleri.remove(s);
            print(s);
          });
        })).toList()
      ),
    );
  }
}
