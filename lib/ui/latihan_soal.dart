import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String kNavigationExamplePage = '''
<!DOCTYPE html><html>
<head><title>Navigation Delegate Example</title></head>
<body>
<p>
The navigation delegate is set to block navigation to the youtube website.
</p>
<ul>
<ul><a href="https://www.youtube.com/">https://www.youtube.com/</a></ul>
<ul><a href="https://www.google.com/">https://www.google.com/</a></ul>
</ul>
</body>
</html>
''';

class LatihanSoal extends StatefulWidget {
  final String id = "LatihanSoal";
  @override
  LatihanSoalState createState() => LatihanSoalState();
}

class LatihanSoalState extends State<LatihanSoal> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Soal"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Builder(
            builder: (BuildContext context) {
              return WebView(
                initialUrl:
                    "https://docs.google.com/forms/d/e/1FAIpQLScRkm0-WR09BZIh3XKYb5e39u1Mj0Lmh1s4B7NGvPqPAn139Q/viewform",
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
                onProgress: (int progress) {
                  print("Loading $progress %");
                  Center(
                    child: Text("Loading $progress %"),
                  );
                },
                javascriptChannels: <JavascriptChannel>{
                  _toasterJavascriptChannel(context)
                },
                navigationDelegate: (NavigationRequest request) {
                  if (request.url.startsWith('https://docs.google.com/form/')) {
                    print("Blocking navigation to $request");
                    return NavigationDecision.prevent;
                  }

                  print("Allowing navigation to $request");
                  return NavigationDecision.navigate;
                },
                onPageStarted: (String url) {
                  print("Page Started Loading: $url");
                },
                onPageFinished: (String url) {
                  print("Page finished Loading: $url");
                },
                gestureNavigationEnabled: true,
              );
            },
          ),
        ),
      ),
      // ignore: missing_return
      onWillPop: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return WillPopScope(
                child: AlertDialog(
                  title: Text("Kamu yakin akan keluar?"),
                  content:
                      Text("Perubahan yang sudah dibuat tidak akan tersimpan"),
                  actions: [
                    FlatButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Batal"),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: Text("Ya"),
                    ),
                  ],
                ),
                onWillPop: () async => false);
          },
        );
      },
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage javascriptMessage) {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(javascriptMessage.message),
          ),
        );
      },
    );
  }
}
