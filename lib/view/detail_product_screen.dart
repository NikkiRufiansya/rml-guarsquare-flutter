import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../assets/colors.dart';
import 'home_screen.dart';

class DetailProduct extends StatefulWidget {
  final String title;
  final String link;
  DetailProduct({required this.title, required this.link});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  late WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
      ),
    )
    ..loadRequest(Uri.parse(widget.link));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.topLeft, child: Text(widget.title)),
        backgroundColor: secondary2,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
