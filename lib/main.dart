import 'package:flutter/material.dart';

import 'Second/SecondScreen.dart';

// Запуск приложения
void main() => runApp(MyApp());

// Основной виджет приложения
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Это будет приложение с поддержкой Material Design
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();
  String UserName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Center(child: Text("Лабораторна №1", style: TextStyle(color: Colors.red[100]),)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Введіть своє ім'я:",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red[300])),
                      labelText: 'User Name',
                    ),
                    onChanged: (text) {
                      setState(() {
                        UserName = text;
                      });
                    },
                  )),
              RaisedButton(
                onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen(name: UserName)));
              },
                color: Colors.red[200],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
              child:  Center(child: Text("Показати ім'я", style: TextStyle(fontSize: 35),)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
