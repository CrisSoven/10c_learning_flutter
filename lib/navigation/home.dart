import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:learning_2_10c/modules/home/entities/restaurant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Restaurant> restaurants = [];
  final db = FirebaseFirestore.instance;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    (() async => {
          await db.collection("restaurants").get().then((event) {
            for (var doc in event.docs) {
              final restaurant = Restaurant(
                  doc.data()['name'],
                  doc.data()['description'],
                  doc.data()['imagenes'],
                  doc.data()['rating'],
                  doc.data()['count']);
              restaurants.add(restaurant);
            }
          })
        });

    if (mounted) {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Scaffold(
        body: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/top'),
        },
        child: const Icon(Icons.chevron_right),
      ),
      body: const Row(
        children: [
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
