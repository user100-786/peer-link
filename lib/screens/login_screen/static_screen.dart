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
        // alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 450,
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.fill,
                  image: AssetImage(
                    'asset/Ellipse.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('asset/peerlink.png'))),
            ),
          ),
          const Positioned(
            bottom: 560,
            left: 135,
            child: Text(
              "PeerLink",
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 12, 12),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 40,
            top: 300,
            height: 470,
            width: 300,
            child: Container(
              height: 500,
              width: 300,
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
              child: const Column(
                children: [
                  Login(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
