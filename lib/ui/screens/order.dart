import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заказать'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 18.0,
        ),
        child: SizedBox(
          height: 500,
          child: TextFieldWidget(),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final firstName = TextEditingController();
  final secondName = TextEditingController();
  final addressOne = TextEditingController();
  final addressTwo = TextEditingController();
  final city = TextEditingController();
  final country = TextEditingController();
  final postcode = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: TextField(
                controller: firstName,
                decoration: const InputDecoration(
                  labelText: 'Имя',
                  // hintText: 'Турар',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: TextField(
                controller: secondName,
                decoration: const InputDecoration(
                  labelText: 'Фамилия',
                  // hintText: 'Тураров',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Flexible(
          child: TextField(
            controller: addressOne,
            decoration: const InputDecoration(
              labelText: 'Адрес',
              // hintText: 'Досмухамедова 2В',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Flexible(
          child: TextField(
            controller: addressTwo,
            decoration: const InputDecoration(
              labelText: 'Крыло, подьезд, этаж и т.д (необязательно)',
              // hintText: '4 подьезд, 2 этаж, 32 квартира',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Flexible(
              child: TextField(
                controller: city,
                decoration: const InputDecoration(
                  labelText: 'Город',
                  // hintText: 'Алматы',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: TextField(
                controller: country,
                decoration: const InputDecoration(
                  labelText: 'Область / Район',
                  // hintText: 'Алмалинский',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Flexible(
          child: TextField(
            controller: postcode,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Почтовый индекс',
              // hintText: '050000',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Flexible(
          child: TextField(
            controller: phone,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Телефон',
              prefixText: '+ 7',
              // hintText: '123-456-78-90',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Flexible(
          child: TextField(
            controller: email,
            decoration: const InputDecoration(
              labelText: 'Email',
              // hintText: 'admin@sonoff.kz',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
