import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(10),
      child: ListView(
        children:<Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 100.0),
            child: Text(
              "login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.red,
                fontWeight: FontWeight.w800,
                fontFamily: "poppins"
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText:"username",
                labelStyle: TextStyle(
                  fontSize: 20.0
                )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText:"password",
                labelStyle: TextStyle(
                  fontSize: 20.0
                )
              ),
              obscureText: true,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red),
                  padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0)),
                  textStyle: WidgetStateProperty.all(TextStyle(fontSize: 23))
                ),
                child: Text(
                  'login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ]
      ),
      ),
    );
  }
}
