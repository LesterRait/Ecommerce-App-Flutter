import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  double progress = 0;
  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Политика конфиденциальности',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: progress,
            color: Colors.red,
            backgroundColor: Colors.black,
          ),
          Expanded(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://sonoff.kz/privacy-policy/',
              onProgress: (progress) {
                this.progress = progress / 100;
                setState(() {});
              },
              onWebViewCreated: (WebViewController webViewController) {
                _webViewController = webViewController;
              },
              onPageFinished: (String url) {
                _webViewController.runJavascriptReturningResult(
                  "document.getElementsByTagName('section')[0].style.display='none'",
                );
                _webViewController.runJavascriptReturningResult(
                  "document.getElementsByTagName('h3')[0].style.display='none'",
                );
                _webViewController.runJavascriptReturningResult(
                  "document.getElementsByTagName('section')[3].style.display='none'",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
