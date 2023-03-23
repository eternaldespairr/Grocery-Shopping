import 'package:flutter/material.dart';
import 'package:groceryproject/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade600,Colors.white],
            end: Alignment.bottomCenter,
            begin: Alignment.topLeft
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80,bottom: 80,top: 90),
              child: Image.asset("lib/Resimler/avocado.png"),
            ),
            Text("We deliver groceries at your doorstep",
              textAlign:TextAlign.center,
              style:
              TextStyle(
                fontSize:27,
                fontWeight: FontWeight.w500,

              ),),
            SizedBox(height: 20,),
            Text("Fresh items everyday",style: TextStyle(fontSize: 17),),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
              } ,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: Colors.green
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Text("Get Started",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ),
            Spacer(),


          ],
        ),
      )

    );
  }
}
