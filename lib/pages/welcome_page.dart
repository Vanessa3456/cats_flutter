// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/pages/breeds.dart';
import 'package:flutter_application_8/theme/theme_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  ThemeMode themeMode=ThemeMode.light;

  //TODO:Add changetheme here
  void changeThemeMode(bool useLightMode){
    setState(() {
      themeMode=useLightMode?ThemeMode.light:ThemeMode.dark;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //add a theme button
          actions: [
            ThemeButton(
              changeThemeMode: changeThemeMode,
            ),
            //elevation:4.0,
          ],

          ),
      //backgroundColor: Colors.brown,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'lib/images/cat.jpg',
                    height: 300,
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              //TEXT
              Text(
                'Welcome to the home of cats',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 50.0),

              GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Breeds())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.brown[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'View',
                      style: TextStyle(
                        color: Colors.brown[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //CONTINUE BUTTON
    );
  }
}
