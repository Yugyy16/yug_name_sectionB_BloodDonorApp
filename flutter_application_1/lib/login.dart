import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        shadowColor: Colors.red,
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        title: Text(
          'Login',
          style: TextStyle(
              fontFamily: 'Schyler', fontSize: 45, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 90),
              Text(
                'B L O O D',
                style: TextStyle(fontSize: 50, fontFamily: 'Schyler'),
              ),
              TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(300)))),
              SizedBox(
                height: 15,
              ),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(300)))),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 16))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: "Schyler", fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  "New User? REGISTER NOW",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
