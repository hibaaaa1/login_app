import 'package:flutter/material.dart';
import 'package:login_app/forget.dart';
import 'package:login_app/services/authservice.dart';

class Loginscreen extends StatefulWidget {
  Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "login",
            style: TextStyle(
              color: const Color.fromARGB(255, 24, 182, 239),
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: email,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined, color: Colors.blue),
              hintText: "Type your email.......",
              hintStyle: TextStyle(
                color: const Color.fromARGB(234, 229, 233, 236),
              ),
              filled: true,
              fillColor: Colors.black,
            ),
          ),
          SizedBox(height: 6),
          TextField(
            controller: password,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock, color: Colors.blue),
              hintText: "text your password......",
              hintStyle: TextStyle(
                color: const Color.fromARGB(255, 245, 244, 238),
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 15, 15, 15),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 750),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPassword()),
                );
              },
              child: Text("Forgot password?"),
            ),
          ),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                login(
                  email: email.text,
                  password: password.text,
                  context: context,
                );
              },
              child: Text("login"),
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 17, 17, 16),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
