import 'package:flutter/material.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const ListTile(
          title: Text('Подытог:'),
          trailing: Text('10.000'),
        ),
        const ListTile(
          title: Text('Промокод:'),
          trailing: Text('0'),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.black,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Итог: 10.000',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/order');
            },
            child: const Text('Оплатить'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
