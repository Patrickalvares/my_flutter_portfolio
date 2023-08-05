import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/globals/app_colors.dart';
import 'package:my_flutter_portfolio/globals/app_text_style.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 90.0;

  const DesktopAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 2,
        bottomOpacity: 23,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60,
          ),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meu Portfólio',
                  style: AppTextStyles.headerTextStyle()
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 30),
                ),
                const Text(
                  'Desenvolvido por mim com Flutter Web',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
            const Spacer(),
            const SizedBox(
              width: 40,
            ),
            Text('Início', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Sobre Mim', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Serviços', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Portfólio', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            Text('Contacte-me', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
          ]),
        ),
      ),
    );
  }
}

class NonDesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 90.0;

  const NonDesktopAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      toolbarHeight: 90,
      elevation: 2,
      bottomOpacity: 23,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          size: 40,
          color: Colors.white,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Meu Portfólio',
              style: AppTextStyles.headerTextStyle()
                  .copyWith(fontWeight: FontWeight.normal, fontSize: 30),
            ),
            const Text(
              'Desenvolvido por mim com Flutter Web',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ]),
    );
  }
}

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text('Início', style: AppTextStyles.headerTextStyle()),
            onTap: () {
              // Implement navigation to the respective page here.
              // Navigator.of(context).pushReplacementNamed("/home");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text('Sobre Mim', style: AppTextStyles.headerTextStyle()),
            onTap: () {
              // Implement navigation to the respective page here.
              // Navigator.of(context).pushReplacementNamed("/about");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.build,
              color: Colors.white,
            ),
            title: Text('Serviços', style: AppTextStyles.headerTextStyle()),
            onTap: () {
              // Implement navigation to the respective page here.
              // Navigator.of(context).pushReplacementNamed("/services");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.folder,
              color: Colors.white,
            ),
            title: Text('Portfólio', style: AppTextStyles.headerTextStyle()),
            onTap: () {
              // Implement navigation to the respective page here.
              // Navigator.of(context).pushReplacementNamed("/portfolio");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_mail,
              color: Colors.white,
            ),
            title: Text('Contacte-me', style: AppTextStyles.headerTextStyle()),
            onTap: () {
              // Implement navigation to the respective page here.
              // Navigator.of(context).pushReplacementNamed("/contact");
            },
          ),
        ],
      ),
    );
  }
}
