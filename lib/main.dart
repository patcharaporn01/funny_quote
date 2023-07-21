import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int F_1 = 0;
  int F_2 = 0;
  static const List<String> quoteList = [
    'เคยเป็นแล้วคนดี ตอนนี้เป็นคนโสด',
    'การมีแฟนที่ดี คือการที่มีแฟนเป็นเรา',
    'ถึงไม่งามบาดตา แต่ปากหมาบาดใจนะ',
    'อยากมีคนใส่ใจ ที่ไม่ใช่ป้าข้างบ้าน',
    'อยู่ด้วยกันจนถึงสิ้นปีเลยได้ไหม"เงินอะ" ',
  ];
  static const List<Color> colorList = [
    Colors.teal,
    Colors.black,
    Colors.lightGreenAccent,
    Colors.redAccent,
    Colors.amberAccent,

];
  var quote = quoteList[0];
  var c = colorList[0];
  void handleClickNextQuote(){
    setState(() {
      var rand = Random();
      var randomIndex = rand.nextInt(quoteList.length);
      print(randomIndex);
      quote = quoteList[randomIndex];
      c = colorList[randomIndex];
    });
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text('คำคมกวนๆ')),
        floatingActionButton: FloatingActionButton(
          child: Text(' Next\n Quote'),
          onPressed: handleClickNextQuote,
        ),
        body:  Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                quote,
                style: TextStyle(
                    color: c,
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ),
    );
  }
}
