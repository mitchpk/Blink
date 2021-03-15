import 'package:blink/widgets/Editor.dart';
import 'package:blink/widgets/SplitView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

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

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TreeView(
        nodes: [
          TreeNode(content: Text("root1")),
          TreeNode(
            content: Text("root2"),
            children: [
              TreeNode(
                content: TextButton(
                  child: Text("child21"),
                  onPressed: () {},
                ),
              ),
              TreeNode(content: Text("child22")),
              TreeNode(
                content: Text("root23"),
                children: [
                  TreeNode(content: Text("child231")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
