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
            icon: Icons.gesture,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.purple,
            text: 'Change',
          ),
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.lime,
            text: 'Address',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.g_mobiledata,
            color: Colors.yellowAccent,
            text: 'Airtm',
          ),
          _SingleCard(
            icon: Icons.safety_divider_sharp,
            color: Colors.greenAccent,
            text: 'Bill',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shield,
            color: Colors.amberAccent,
            text: 'Shopping',
          ),
          _SingleCard(
            icon: Icons.earbuds,
            color: Colors.blueGrey,
            text: 'Food',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.panorama_photosphere,
            color: Colors.redAccent,
            text: 'Pappers',
          ),
          _SingleCard(
            icon: Icons.pie_chart_sharp,
            color: Colors.lime,
            text: 'Address',
          ),
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
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        ),
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 160,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
