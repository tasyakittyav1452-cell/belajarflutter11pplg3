import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tugas Mata Kuliah MP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama : Filzah Zhaafirah',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text(
              'NIS : 06784',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10,),
            Text(
              'Kelas : 11 PPLG 3',
              style: TextStyle(fontSize: 18),
            ),
          ],
        )
      ),
    );
  }
}