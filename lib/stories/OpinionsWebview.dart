import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class OpinionsWebView extends StatefulWidget {
  @override
  _OpinionsWebViewState createState() => _OpinionsWebViewState();
}

class _OpinionsWebViewState extends State<OpinionsWebView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: WebView(
          initialUrl: 'https://ureport.in/opinions/',
          javascriptMode: JavascriptMode.unrestricted,
          //onWebViewCreated: (WebViewController WebViewController) {
           // _controller.complete(WebViewController);
          //},
        )
    );
  }
}
