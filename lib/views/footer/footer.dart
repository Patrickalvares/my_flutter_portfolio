import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/views/footer/desktop_footer.dart';
import 'package:my_flutter_portfolio/views/footer/mobile_footer.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1920),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (size.width > 970) {
            return const DesktopFooter();
          } else {
            return const MobileFooter();
          }
        },
      ),
    );
  }
}
