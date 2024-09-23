import 'package:flutter/material.dart';
import 'package:flutter_application_8/BreedType/cart.dart';
import 'package:flutter_application_8/BreedType/cats.dart';
import 'package:provider/provider.dart';

class WallpaperItem extends StatefulWidget{
  Cats cat;
   WallpaperItem({super.key,required this.cat});

  @override
  State<WallpaperItem> createState() => _WallpaperItemState();
}

class _WallpaperItemState extends State<WallpaperItem> {

  //remove cat from wallpaper
  void removeWallpaper(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.cat);
  }
  @override
  Widget build(BuildContext context){

    //create a tile to display the added to wallpapers

    return Container(
      decoration: BoxDecoration(
       // color: Colors.brown,
       color: Theme.of(context).colorScheme.secondary,
        borderRadius:BorderRadius.circular(2)),
      margin:const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.cat.imagePath,
          height: 500,),
        // title: Text(widget.cat.breed),
        // subtitle:Text(widget.cat.price)
        trailing:IconButton(icon: Icon(Icons.delete),onPressed: removeWallpaper,) ,
      ),
    ); 
  }
}