import 'package:flutter/material.dart';
import 'package:flutter_application_8/BreedType/cart.dart';
import 'package:flutter_application_8/pages/welcome_page.dart';
import 'package:flutter_application_8/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( Cats());
}

class Cats extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Cart(),
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
        //theme: Provider.of(Them),
        theme: lightMode,
        darkTheme: darkMode,
      ),
      );

    

  
}
}
