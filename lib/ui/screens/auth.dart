import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 100),
        child: Column(
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
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_sharp),
                hintText: 'Логин',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: 'Пароль',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Авторизоваться'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.green),
                ),
              ),
            ),
            const Divider(
              height: 60,
              indent: 70,
              endIndent: 70,
              color: Colors.black,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                children: [
                  const TextSpan(
                    text: 'Нет аккаунта? ',
                  ),
                  TextSpan(
                    text: 'Регистрация',
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/registration');
                      },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
