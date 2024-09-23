import 'package:flutter/material.dart';
import 'package:flutter_application_8/BreedType/cart.dart';
import 'package:flutter_application_8/BreedType/cats.dart';
import 'package:flutter_application_8/breed_tile.dart';
import 'package:provider/provider.dart';

class Breed extends StatefulWidget {
  const Breed({super.key});

  @override
  State<Breed> createState() => _BreedState();
}

class _BreedState extends State<Breed> {
  //add cat to cart
  void addCatToCart(Cats cat) {
    Provider.of<Cart>(context, listen: false)
        .addItemToCart(cat); //accessing the method using a provider

    //alert the user that something successfully happened
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Cat added to cart'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //makes a space between the search name and the search icon
              children: [
                Text('Search'),
                Icon(Icons.search),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Cats are cool,lets explore the world of cats together',
              style: TextStyle(color: Colors.brown[900]),
            ),
          ),

          //hot cats
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Available Breeds',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'See all options',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //list of breeds
          //use an expandad list to fill up the rest of the space
          //list of shoes for sale
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  //get a cat from the  catlist
                  Cats cat = value.getCatList()[index];
                  //return shoes
                  return BreedTile(
                    cat: cat,
                    onTap: () => addCatToCart(cat),
                  );
                }),
          ),

          const Padding(
            //padding:  EdgeInsets.only(top:25.0,left: 25.0,right:25.0 ),
            padding: EdgeInsets.all(25),
            child: Divider(
              color: Colors.white,
            ),
          ) //divider at the bottom
        ],
      ),
    );
  }
}
