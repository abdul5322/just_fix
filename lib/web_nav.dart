import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class NavigationControls extends StatelessWidget {
  final Future<WebViewController> _controllerFuture;

  const NavigationControls(this._controllerFuture);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _controllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            FlatButton.icon(
                label: Text('back'),
                icon: Icon(Icons.arrow_left),
                onPressed: !webViewReady
                    ? null
                    : () async {
                  if (await controller.canGoBack()) {
                    controller.goBack();
                  } else {
                    Scaffold.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Error',
                        ),
                      ),
                    );
                  }
                })
          ],
        );
      },
    );
  }
}
