import 'dart:async';

import 'item.dart';

class Storage {

  Future<List<Item>> getNotes() async {
    List<Item> notes = [new Item(title: "title", subtitle: "subtitle", code: "code", text: "text", photoUrl: "photoUrl")];
    return notes;
  }
}