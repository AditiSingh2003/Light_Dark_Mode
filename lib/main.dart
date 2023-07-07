import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.flutter_dash_sharp, size: 100,color: darkMode ? Colors.white : Colors.black,),
              decoration: BoxDecoration(
                color:darkMode ? Colors.grey[850] : Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: darkMode ? Colors.grey.shade900 : Colors.grey.shade400,
                    spreadRadius: 1.0,
                    blurRadius: 15.0,
                    offset: Offset(5.0,5.0),
                  ),
                    BoxShadow(
                    color: darkMode ? Colors.grey.shade900 : Colors.white,
                    spreadRadius: 1.0,
                    blurRadius: 15.0,
                    offset: Offset(-5.0,-5.0),
                  ),
                ],
              ),
              ),

              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                    darkMode = false;
                  });
                  },
                    child: Text("Light",style: TextStyle(color: Colors.black, fontSize: 15),),
                      style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    ),
                  ),
                SizedBox(width: 20),
                  ElevatedButton(onPressed: (){
                    setState(() {
                    darkMode = true;
                    });
                  },
                  child: Text("Dark", style: TextStyle(color: Colors.white, fontSize: 15)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  ),
                  
              ],)
          ],
        ),
        ),
    );
  }
}