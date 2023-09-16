import 'package:flutter/material.dart';
import 'login_screen.dart';

class Static extends StatelessWidget {
  const Static({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Image.asset(
              'asset/Ellipse.png',
            ),
          ),
          Positioned(
            top: 25,
            child: Image.asset(
              'asset/peerlink.png',
              height: 200,
              width: 200,
            ),
          ),
          const Positioned(
            bottom: 90,
            child: Text(
              "PeerLink",
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 12, 12),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 270,
            height: 500,
            width: 300,
            child: Container(
                // height: 500,
                // width: 300,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey, // Color of the shadow
                      offset: Offset(0, 4),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: const Login()),
          ),
        ],
      ),
    );
  }
}
