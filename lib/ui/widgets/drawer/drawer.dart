import 'package:ecommerce/ui/widgets/drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            AppBar(
              title: const Text(
                'Sonoff.kz',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              centerTitle: false,
              automaticallyImplyLeading: false,
              elevation: 4,
            ),
            DrawerItem(
              title: 'Блог',
              icon: Icons.wordpress,
              onPressed: () {
                Navigator.pushNamed(context, '/blog');
              },
            )
          ],
        ),
      ),
    );
  }
}
