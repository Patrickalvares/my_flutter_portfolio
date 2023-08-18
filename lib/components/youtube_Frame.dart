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

    return Container(
      height: 482.50,
      width: 225.00,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: HtmlWidget(
        onLoadingBuilder: (context, element, loadingProgress) =>
            const CircularProgressIndicator(),
        content,
        factoryBuilder: () => _YoutubeIframeWidgetFactory(),
      ),
    );
  }
}

class SnakeHtmlYoutubeIframe extends StatelessWidget {
  final String youtubeCode;

  const SnakeHtmlYoutubeIframe({
    required this.youtubeCode,
    required super.key,
  });

  @override
  Widget build(BuildContext context) {
    String content =
        '<iframe src="https://www.youtube.com/embed/$youtubeCode"></iframe>';

    return Container(
      height: 482.50,
      width: 645.80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: HtmlWidget(
        onLoadingBuilder: (context, element, loadingProgress) =>
            const CircularProgressIndicator(),
        content,
        factoryBuilder: () => _YoutubeIframeWidgetFactory(),
      ),
    );
  }
}

class CarIotHtmlYoutubeIframe extends StatelessWidget {
  final String youtubeCode;

  const CarIotHtmlYoutubeIframe({
    required this.youtubeCode,
    required super.key,
  });

  @override
  Widget build(BuildContext context) {
    String content =
        '<iframe src="https://www.youtube.com/embed/$youtubeCode"></iframe>';

    return Container(
      height: 400,
      width: 225.00,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: HtmlWidget(
        onLoadingBuilder: (context, element, loadingProgress) =>
            const CircularProgressIndicator(),
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
