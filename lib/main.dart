import 'package:flutter/material.dart';

import 'item.dart';
import 'search.dart';
import 'storage.dart';
import 'item_note.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => ItemList(),
    '/search': (context) => Search(),
  },
));

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  Storage storage = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Library"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {Navigator.pushNamed(context, "/search").then((value) { setState(() {});});},
          ),
        ],
      ),
      body: FutureBuilder(
          future: storage.getNotes(),
          builder: (context, AsyncSnapshot<List<Item>> snapshot)  {
            switch(snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Text("loading");
              case ConnectionState.done:
                return Column(
                  children: create(snapshot.data),
                ) ;
              default:
                return const Text('Contact admin :)');
            }
          }
      ),
    );
  }

  List<ItemNote> create(List<Item>? items) {
    return items!.map((item) {
      return ItemNote(
          item: item
      );
    }).toList();
  }
}