// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_html/flutter_html.dart';

class videoView extends StatefulWidget {
  const videoView({super.key});

  @override
  State<videoView> createState() => _videoViewState();
}

class _videoViewState extends State<videoView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://media.streambrothers.com:2000/VideoPlayer/8580?autoplay=1'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}

class htmlstream extends StatelessWidget {
  const htmlstream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Html(
          data: """
            <div><iframe width="100%" height="520" src="//streaming.intacs.com/clients/atlpraisehouse/v/video.html" frameborder="0" allowfullscreen="" autoplay;=""></iframe></div>
            """,
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late final WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.dataFromString(
            '''<html><body><iframe width="100%" height="520" src="//streaming.intacs.com/clients/atlpraisehouse/v/video.html" frameborder="0" allowfullscreen="false" autoplay;="true"></iframe></body></html>''',
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8')),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebView Example'),
        ),
        body: Stack(
          children: [
            WebViewWidget(
              controller: controller,
            ),
            if (loadingPercentage < 100)
              LinearProgressIndicator(
                value: loadingPercentage / 100.0,
              ),
          ],
        ));
  }
}
