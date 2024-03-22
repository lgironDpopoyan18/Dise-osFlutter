import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.yellow,
              icon: Icons.access_alarm_outlined,
              text: 'Tiempo'),
          _SingleCard(color: Colors.teal, icon: Icons.work, text: 'Trabajo'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.green,
              icon: Icons.account_balance_outlined,
              text: 'Cuentas'),
          _SingleCard(
              color: Colors.deepOrange,
              icon: Icons.account_balance_wallet_rounded,
              text: 'Billetera'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purple,
              icon: Icons.add_to_home_screen_outlined,
              text: 'Transferencia'),
          _SingleCard(
              color: Colors.brown, icon: Icons.wc_rounded, text: 'Beneficios'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    size: 35,
                  ),
                  radius: 30,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(text, style: TextStyle(color: color, fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
