import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

class SimpleHtmlYoutubeIframe extends StatelessWidget {
  final String youtubeCode;

  const SimpleHtmlYoutubeIframe({
    required this.youtubeCode,
    required super.key,
  });

  @override
  Widget build(BuildContext context) {
    String content =
        '<iframe src="https://www.youtube.com/embed/$youtubeCode"></iframe>';

    return SizedBox(
      height: 482.50,
      width: 225.00,
      child: HtmlWidget(
        content,
        factoryBuilder: () => _YoutubeIframeWidgetFactory(),
      ),
    );
  }
}

class _YoutubeIframeWidgetFactory extends WidgetFactory with WebViewFactory {
  @override
  bool get webViewMediaPlaybackAlwaysAllow => true;
  @override
  String? get webViewUserAgent => 'Lang Learning';
}
