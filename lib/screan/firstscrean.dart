import 'package:flutter/material.dart';
import 'package:signup/constant/size.dart';

import 'loginscrea.dart';
import 'signinscrean.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    screan_size.init(context);
    bool isselected = false;
    return Scaffold(
      body: Container(
        width: screan_size.width,
        height: screan_size.hieght,
        decoration: const BoxDecoration(
          color: Colors.amber,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/plant.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'The best \n app for \n your plants',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(height: 160),
            Container(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signinscrean()));   
                  },
                  child: Text(
                    'login',
                    style: TextStyle(color: const Color.fromARGB(255, 21, 83, 23)),
                  ),
                )),
            const SizedBox(height: 30),
            Container(
              height: 40,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginscrea() ));

                  // Your onPressed function logic here
                },
                child: Text(
                  'sign up',
                  style: TextStyle(color: const Color.fromARGB(255, 21, 83, 23)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
