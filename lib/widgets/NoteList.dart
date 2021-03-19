import 'package:blink/widgets/treeview/treeview.dart';
import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TreeView(
      nodes: [
        TreeNode(text: "root1", onPressed: (){}),
        TreeNode(
          text: "root2",
          children: [
            TreeNode(text: "child21", onPressed: (){}),
            TreeNode(text: "child22", onPressed: (){}),
            TreeNode(
              text: "root23",
              children: [
                TreeNode(text: "child231", onPressed: (){}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
