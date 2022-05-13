import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final bool _push = false;
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.login),
              trailing: const Icon(Icons.arrow_right),
              title: const Text('Авторизация'),
              onTap: () {
                Navigator.pushNamed(context, '/auth');
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Персональные данные',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline),
              trailing: const Icon(Icons.arrow_right),
              title: const Text('Избранное'),
              onTap: () {
                Navigator.pushNamed(context, '/favorite');
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart_outlined),
              trailing: const Icon(Icons.arrow_right),
              title: const Text('Корзина'),
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            SwitchListTile(
              secondary: const Icon(Icons.notifications_active_outlined),
              title: const Text('Уведомления'),
              onChanged: (bool value) {
                Navigator.pushNamed(context, '/notification');
              },
              value: _push,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Детали заказа',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shield_outlined),
              trailing: const Icon(Icons.arrow_right),
              title: const Text('Политика конфиденциальности'),
              onTap: () {
                Navigator.pushNamed(context, '/privacy_policy');
              },
            ),
            ListTile(
              leading: const Icon(Icons.my_library_books_outlined),
              trailing: const Icon(Icons.arrow_right),
              title: const Text('История заказов'),
              onTap: () {
                Navigator.pushNamed(context, '/order_history');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        backgroundColor: Colors.grey[600],
        onPressed: () {},
      ),
    );
  }
}
