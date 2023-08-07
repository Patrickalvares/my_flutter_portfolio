import 'package:flutter/material.dart';

import 'package:my_flutter_portfolio/views/my-services/desktop_my_services.dart';
import 'package:my_flutter_portfolio/views/my-services/phone_my_services.dart';
import 'package:my_flutter_portfolio/views/my-services/tablet_my_services.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (size.width > 1480) {
          return const DesktopMyServices();
        } else if (size.width < 1480 && size.width > 1020) {
          return const TabletMyServices();
        } else {
          return const PhoneMyServices();
        }
      },
    );
  }
}
