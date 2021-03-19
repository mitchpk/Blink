import 'package:blink/widgets/Editor.dart';
import 'package:blink/widgets/NoteList.dart';
import 'package:blink/widgets/SplitView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerticalSplitView(
        left: NoteList(),
        right: Editor(),
      ),
    );
  }
}

