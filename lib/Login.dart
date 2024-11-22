import 'package:flutter/material.dart';
import 'HomePage.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
  
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Hardcoded credentials for simplicity
  final String correctUsername = "User";
  final String correctPassword = "12345";

  void _login(){
     if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;

         if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;

      if (username == correctUsername && password == correctPassword) {
        // Navigate to HomePage on successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );
      } else {
        // Show error if credentials are incorrect
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid username or password')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      
    );

  }
}
