import 'package:flutter/material.dart';

import 'item.dart';

class ItemNote extends StatelessWidget {

  final Item item;

  const ItemNote({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                item.title,
                style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueAccent
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                item.text,
                style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey[20]
                ),
              ),
              const SizedBox(height: 6.0),
            ],
          ),
        )
    );
  }
}