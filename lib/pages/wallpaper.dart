import 'package:flutter/material.dart';
import 'package:flutter_application_8/BreedType/cart.dart';
import 'package:flutter_application_8/BreedType/cats.dart';
import 'package:flutter_application_8/components/wallpaper_item.dart';
import 'package:provider/provider.dart';

class Wallpaper extends StatelessWidget{
  const Wallpaper({super.key});
  @override
  Widget build(BuildContext context){
    return Consumer<Cart>
    (
      builder: (context,value,child)=>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
      
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            //heading
            const Text('My Wallpapers',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
            ),

            const SizedBox(height: 20),

             Expanded(child: ListView.builder(
              itemCount:value.getUserCat().length ,
              itemBuilder: (context,index){
              //get individual cat
              Cats individualCat=value.getCatList()[index];


              //return the wallpaper item
              return WallpaperItem(cat:individualCat,);
              

             },
             ),
             ),
          ],
        
            ),
      ),
    );
    
  }
}