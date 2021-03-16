import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Editor extends StatefulWidget {
  @override
  _EditorState createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  String markdownText = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Scrollbar(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              onChanged: (String text) {
                setState(() {
                  markdownText = text;
                });
              },
            ),
          ),
        ),
        VerticalDivider(),
        Expanded(
          child: Markdown(
            data: markdownText,
            onTapLink: (text, href, title) {
              if (href != null) launch(href);
            },
          ),
        ),
      ],
    );
  }
}
