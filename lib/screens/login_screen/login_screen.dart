// todo: create Login screen here
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  TextEditingController _textController = TextEditingController();
  FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TabController? _tabController = TabController(length: 2, vsync: this);
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
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Set border radius here
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.orange; // Background color when pressed
                        }
                        return Colors.transparent; // Default background color
                      },
                    ),
                  ),
                  child: Text("Log In"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Set border radius here
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.orange; // Background color when pressed
                        }
                        return Colors.transparent; // Default background color
                      },
                    ),
                  ),
                  child: Text("SignUp"),
                ),
              ],
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              controller: _textController,
              // focusNode: _focusNode,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), hintText: "Enter Your ID"),
              // enabled: true,
              keyboardType: TextInputType.text,
            ),
          ),
        ),
      ],
    );
  }
}
