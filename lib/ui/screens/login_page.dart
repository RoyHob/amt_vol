import 'package:amt_vol/constants/style.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool _textsecured = true;
  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset("lib/assets/amtrac.png"
          // ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Sign in",
            style: titleText,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: userController,
            decoration: const InputDecoration(labelText: "Username", hintText: "Username", contentPadding: EdgeInsets.all(20.0), border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passController,
            obscureText: _textsecured,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _textsecured = !_textsecured;
                  });
                },
                icon: Icon(_textsecured ? Icons.remove_red_eye_rounded : Icons.pause_presentation_outlined),
              ),
              contentPadding: const EdgeInsets.all(20.0),
              labelText: "Password",
              hintText: "Password",
              border: const OutlineInputBorder(),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {},
            child: const Text(
              "Sign in ",
              style: buttonText,
            ),
          ),

          const SizedBox(height: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forget password?", style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
