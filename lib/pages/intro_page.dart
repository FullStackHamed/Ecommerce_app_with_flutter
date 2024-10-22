import 'package:ecomerce_app/pages/home_page.dart';
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
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the column
                  children: [
                    // logo
                    Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 240,
                        )),

                    const SizedBox(height: 48),

                    // title
                    const Text('Best Laptops in the town!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),

                    // sub title
                    const Text(
                      'Discover the Perfect Blend of Performance, Style, and Affordability for Every Need!',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 48),

                    // start new button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(25),
                        child: const Center(
                            child: Text(
                          'Shop Now!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                      ),
                    ),
                  ],
                ))));
  }
}