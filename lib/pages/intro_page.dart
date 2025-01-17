import 'package:ecom/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
              ),
            ),

            const SizedBox(
              height: 48,
            ),

            // title
            const Text(
              'Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(
              height: 24,
            ),

            // subtitle
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                'Brand New Sneakers and custom Kicks made with premium quality',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // start now button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
