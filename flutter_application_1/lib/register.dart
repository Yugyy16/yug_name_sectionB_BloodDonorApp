import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Register Now',
            style: TextStyle(color: Colors.white),
          ),
          leading: BackButton(
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Last Name(optional)',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))))),
            Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))))),
            Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))))),
            Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Blood Group',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))))),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', (Route<dynamic> route) => false);
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20))),
              child: Text(
                'Register',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )
          ],
        ));
  }
}
