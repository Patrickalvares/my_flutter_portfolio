import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/app_colors.dart';
import 'package:my_flutter_portfolio/constants/app_text_style.dart';

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
            AppBarHoverText(
              text: 'Início',
              style: AppTextStyles.headerTextStyle(),
            ),
            const SizedBox(
              width: 40,
            ),
            AppBarHoverText(
                text: 'Sobre Mim', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            AppBarHoverText(
                text: 'Serviços', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            AppBarHoverText(
                text: 'Portfólio', style: AppTextStyles.headerTextStyle()),
            const SizedBox(
              width: 40,
            ),
            AppBarHoverText(
                text: 'Contacte-me', style: AppTextStyles.headerTextStyle()),
            const Spacer(),
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

class AppBarHoverText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final VoidCallback? onTap;

  const AppBarHoverText(
      {super.key, required this.text, this.style, this.onTap});

  @override
  AppBarHoverTextState createState() => AppBarHoverTextState();
}

class AppBarHoverTextState extends State<AppBarHoverText> {
  final ValueNotifier<bool> _isHovering = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isHovering,
      builder: (BuildContext context, bool isHovering, Widget? child) {
        return MouseRegion(
          onEnter: (_) => _isHovering.value = true,
          onExit: (_) => _isHovering.value = false,
          child: GestureDetector(
            onTap: widget.onTap,
            child: Transform.scale(
              scale: isHovering
                  ? 1.1
                  : 1.0, // Ajuste o fator de escala conforme necessário
              child: Text(
                widget.text,
                style: widget.style?.copyWith(
                  decoration: isHovering ? TextDecoration.underline : null,
                  decorationColor: isHovering ? AppColors.hoverColor : null,
                  decorationThickness: isHovering ? 3.0 : null,
                  color:
                      isHovering ? AppColors.hoverColor : widget.style?.color,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
