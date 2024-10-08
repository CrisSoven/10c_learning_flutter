import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  bool _isOscure = true; // Set to true to start with password obscured

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon_3d.png', width: 150, height: 150),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Correo electrónico",
                  label: Text("tu@correo.com"),
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _email,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "········",
                  label: const Text("Contraseña"),
                  prefixIcon: IconButton(
                    onPressed: () => setState(() => _isOscure = !_isOscure),
                    icon: Icon(
                      _isOscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                ),
                obscureText: _isOscure,
                controller: _pass,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
