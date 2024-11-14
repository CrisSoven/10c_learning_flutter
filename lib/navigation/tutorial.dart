import 'package:flutter/material.dart';
import 'package:learning_2_10c/navigation/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  void _onItemTapped() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('tutorial', true);
    Navigator.pushReplacementNamed(context, '/menu');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        child: Column(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQd3egA1F0lr83RI7kx4yAKBeRCXrJTGaFXg&s',
              width: double.infinity,
              height: 360,
            ),
            const Center(
              child: Text(
                'Bienvenido a la app',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Navigation(
                        nextBottom: true,
                      ),
                    ));
              },
              child: const Text('Comenzar'),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                _onItemTapped();
              },
              child: const Text('No mostrar más'),
            )
          ],
        ),
      ),
    );
  }
}
