import 'package:flutter/material.dart';

import 'contentColumn.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
        child: Row(
          children: <Widget>[
            buildColumn(
                title: 'Primera columna', description: 'Primer parrafo'),
            buildColumn(
                title: 'Segunda columna', description: 'Primer parrafo'),
            buildColumn(
                title: 'Tercera columna', description: 'Primer parrafo'),
          ],
        ),
      ),
    );
  }


}
