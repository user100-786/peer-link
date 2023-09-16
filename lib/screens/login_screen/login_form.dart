import 'package:flutter/material.dart';
import 'package:peerlink/screens/login_screen/login_screen.dart';
import 'package:peerlink/screens/login_screen/static_screen.dart';
import 'package:peerlink/screens/sign_up_screen/sign_up_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

bool signupbutton = false;

class _LoginFormState extends State<LoginForm> {
  TextEditingController _idtextController = TextEditingController();
  TextEditingController _passtextController = TextEditingController();

  FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _idtextController.dispose();
    _passtextController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Login log = Login();

    return  Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: TextFormField(
                  controller: _idtextController,
                  // focusNode: _focusNode,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Enter Your ID"),
                  // enabled: true,
                  // keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: TextFormField(
                  controller: _passtextController,
                  // focusNode: _focusNode,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Enter Your Password"),
                  // enabled: true,
                  // keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 20, 10, 50),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 121, 119, 119),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                    width: 210,
                    height: 45,
                    child: TextButton(
                      onPressed: () {
                        // Add your button's onPressed action here
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.orange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          Login.isLoginPressed = false;
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Static()));
                          });
                        });
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                  // Login()
                ],
              )
            ],
          );
  }
}
