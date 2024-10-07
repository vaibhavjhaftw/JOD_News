import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleWebViewPage extends StatelessWidget {
  final String url;

  ArticleWebViewPage({required this.url});

  // Function to open the URL in the default browser
  Future<void> _launchInBrowser(String url, BuildContext context) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication, // Opens the link in the browser
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not launch $url'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read Full Article'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _launchInBrowser(url, context);
          },
          child: Text('Open Full Article'),
        ),
      ),
    );
  }
}
