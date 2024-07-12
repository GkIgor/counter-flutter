import 'package:flutter/material.dart';

class DrawerHeaderComponent extends StatelessWidget {
  const DrawerHeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Minha Biblioteca',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.book,
          color: Colors.white,
          size: 30,
        ),
      ],
    );
  }
}
