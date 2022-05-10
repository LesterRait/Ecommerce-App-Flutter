import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 28.0),
              child: Text(
                'Sonoff.kz',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'E-mail',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_sharp),
                hintText: 'Имя',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_outlined),
                hintText: 'Фамилия',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: 'Пароль',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Зарегестрироваться'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              child: const Text(
                'Авторизация',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/auth');
              },
            )
          ],
        ),
      ),
    );
  }
}
