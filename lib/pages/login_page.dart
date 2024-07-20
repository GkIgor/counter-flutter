import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {
        email = emailController.text;
      });
    });
    passwordController.addListener(() {
      setState(() {
        password = passwordController.text;
      });
    });
    log('init');
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                  controller: emailController,
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                  controller: passwordController,
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    print("Usuario: $email - Senha: $password");

                    if (email == "Admin" && password == "Admin") {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Usuário ou senha inválidos'),
                        ),
                      );
                    }
                  },
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
