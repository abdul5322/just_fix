import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_fix/web_nav.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: WebViewClass(),
    );
  }
}

class WebViewClass extends StatefulWidget {
  WebViewState createState() => WebViewState();
}

class WebViewState extends State<WebViewClass> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  WebViewController _myController;

  num position = 1;

  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
    _myController.evaluateJavascript(
        "document.getElementsByClassName(\"bg-gry\")[0].style.display='none';"
            "document.getElementsByClassName(\"bg-gry\")[1].style.display='none';"
            "document.getElementsByClassName(\"bg-gry\")[2].style.display='none';"
            "document.getElementsByClassName(\"divider-cont\")[1].style.display='none';"
            "document.getElementsByClassName(\"large-pad\")[3].style.display='none';"
            "document.getElementsByClassName(\"col-1-2\")[0].style.display='none';"
            "document.getElementsByClassName(\"col-1-2\")[1].style.display='none';"
            "document.getElementsByClassName(\"col-1-2\")[2].style.display='none';"
            "document.getElementsByClassName(\"tbl-style\")[1].style.display='none';"
    );
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: position, children: <Widget>[
        WebView(
          initialUrl: 'https://justfixuae.ae/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
            _myController = webViewController;
          },
          key: key,
          onPageFinished: doneLoading,
          onPageStarted: startLoading,
        ),
        Container(
          color: Colors.white,
          child: Center(child: CircularProgressIndicator()),
        ),
      ]),
      floatingActionButton: NavigationControls(_controller.future),
    );
  }
}
