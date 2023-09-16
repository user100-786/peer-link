import 'package:flutter/material.dart';
import 'package:peerlink/screens/login_screen/login_form.dart';

import '../login_screen/login_screen.dart';
import '../login_screen/static_screen.dart';

// import '../login_screen/login_screen.dart';

class SignupForm extends StatefulWidget {
  SignupForm({super.key});
  // bool isloginpressed;

  @override
  State<SignupForm> createState() => _SignupFormState();
}

bool loginbutton = false;

class _SignupFormState extends State<SignupForm> {
  TextEditingController _idtextController = TextEditingController();
  TextEditingController _passtextController = TextEditingController();
  TextEditingController _conpass_textController = TextEditingController();
  FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _idtextController.dispose();
    _passtextController.dispose();
    _conpass_textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
         Column(
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: TextFormField(
                  controller: _conpass_textController,
                  // focusNode: _focusNode,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Confirm Your Password"),
                  // enabled: true,
                  // keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account?"),
                  TextButton(
                    onPressed:() {
                        setState(() {
                          Login.isLoginPressed = true;
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Static()));
                          });
                        });
                      },

                    child: const Text("Sign in"),
                  )
                ],
              )
            ],
          );
  }
}
