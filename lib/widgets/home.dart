import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.add),
                  Text("Bienvenido"),
                  Text("Bienvenido"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.add),
                  Text("otra línea"),
                  Text("many"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.add),
                  Text("otra línea"),
                  Text("tercer renglón"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
