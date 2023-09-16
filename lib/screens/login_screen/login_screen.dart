// todo: create Login screen here
import 'package:flutter/material.dart';
import 'package:peerlink/screens/login_screen/login_form.dart';
import 'package:peerlink/screens/sign_up_screen/sign_up_screen.dart';

class Login extends StatefulWidget {
  static bool isLoginPressed = true;
  const Login({super.key});

  //  Function(bool) toggleLoginState=?;

  // Login({required this.toggleLoginState});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> with TickerProviderStateMixin {
  // bool isLoginPressed = true;

  void toggleIsLoginPressed() {
    setState(() {
      Login.isLoginPressed = !Login.isLoginPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TabController? _tabController = TabController(length: 2, vsync: this);
    // Initially, the Login button is pressed
    // if (signupbutton) {
    //   setState(() {
    //     isLoginPressed = !isLoginPressed;
    //   });
    // }
    // if (loginbutton) {
    //   setState(() {
    //     isLoginPressed = !isLoginPressed;
    //   });
    // }

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: 220,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.orange, width: 1.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 109,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Login.isLoginPressed = true; // Set the Login button as pressed
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) {
                        if (Login.isLoginPressed) {
                          return Colors.orange;
                        }
                        return Colors.white;
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Login.isLoginPressed ? Colors.white : Colors.orange,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 109,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Login.isLoginPressed =
                          false; // Set the Login button as not pressed
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) {
                        if (!Login.isLoginPressed) {
                          return Colors.orange;
                        }
                        return Colors.white;
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: !Login.isLoginPressed ? Colors.white : Colors.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        ///here comes the login page
        ///
        ///
        ///
        // if (isLoginPressed) LoginForm();
        // else {SignupForm(),}

        Login.isLoginPressed ? const LoginForm() : SignupForm(),
      ],
    );
  }

  // Widget scrn() {
  //   if (isLoginPressed && !signupbutton) {
  //     return LoginForm();
  //   } else if (!isLoginPressed && !loginbutton) {
  //     return SignupForm();
  //   }
  //   else if(){
  //     return
  //   }
  // }
}
