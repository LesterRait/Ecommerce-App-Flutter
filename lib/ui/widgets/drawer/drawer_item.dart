import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onPressed,
    );
  }
}
