import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Text("some search done")
    );
  }

}