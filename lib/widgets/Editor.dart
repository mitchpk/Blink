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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Padding(
                  child: Icon(Icons.description),
                  padding: EdgeInsets.all(4),
                ),
                onTap: () {},
                borderRadius: BorderRadius.circular(4),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(fontFamily: 'SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace'),
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
          ),
        ),
      ],
    );
  }
}