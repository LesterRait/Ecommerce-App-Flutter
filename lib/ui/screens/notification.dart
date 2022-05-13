import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сообщения'),
      ),
      body: Column(
        children: const [
          ListTile(
            // leading: Icon(Icons.mail_outline),
            title: Text('Проверка уведомлений'),
            subtitle: Text('Тестовая запись уведомления'),
            trailing: Text('22.01.2022'),
          )
        ],
      ),
    );
  }
}
