import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StoryDetailLinks extends StatefulWidget {
  final String url;
  StoryDetailLinks({@required this.url});

  @override
  _StoryDetailLinksState createState() => _StoryDetailLinksState();
}

class _StoryDetailLinksState extends State<StoryDetailLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("U-Report Stories"),
          backgroundColor: Colors.white,
        ),
        body: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          //onWebViewCreated: (WebViewController WebViewController) {
          // _controller.complete(WebViewController);
          //},
        ));
  }
}
