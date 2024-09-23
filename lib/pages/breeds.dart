import 'package:flutter/material.dart';
import 'package:flutter_application_8/components/bottom_nav_bar.dart';
import 'package:flutter_application_8/pages/breed.dart';
import 'package:flutter_application_8/pages/wallpaper.dart';

class Breeds extends StatefulWidget {
  const Breeds({super.key});

  @override
  State<Breeds> createState() => _BreedsState();
}

//variable

//method to naviagate the bottomBar

class _BreedsState extends State<Breeds> {
  int _selectedindex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

//pages to display
  final List<Widget> _pages = [
    const Breed(),
    const Wallpaper(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown[400],
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //meaing you dont want to see the appbar but the menu icon
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }, //onpressed open up the drawer
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.brown,
        child: Column(
          children: [
            
            //text
            DrawerHeader(child: Image.asset('lib/images/cat.jpg')),
            // DrawerHeader(child: Image.asset(
            // 'lib/images/cat.jpg',color: Colors.brown,)),//you can change the color of the image in this way

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.white,
              ),
            ), //this is just a line

            //other pages
            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Breed',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.wallpaper,
                  color: Colors.white,
                ),
                title: Text(
                  'Cart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 450.0,),

            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
                title: Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            //wallpaper images
          ],
        ),
      ),
      body: _pages[_selectedindex],
    );
  }
}
