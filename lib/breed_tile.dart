//to display the cat and the breed name
import 'package:flutter/material.dart';
import 'package:flutter_application_8/BreedType/cats.dart';

class BreedTile extends StatelessWidget {
  Cats cat; //with a given cat
  void Function()? onTap;
  BreedTile({super.key, required this.cat,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        //color: Colors.brown,
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //cat picture

          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                cat.imagePath,
                // height: 100.0,
              )), //with a given cat you can get the image
          //wrapping it in a cliprrect to curve the corners of the image

          //description
          Text(
            cat.breed,
            style: TextStyle(color: Colors.white),
          ),

          //Add to favourite
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,//TO PUSH THE + BUTTON TO THE END
              //crossAxisAlignment: CrossAxisAlignment.start,
        
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    //cat name
                    Text(cat.breed,style:const TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
                    const SizedBox(height: 5.0,),
            
                    //price
                    Text(cat.price,style: TextStyle(color: Colors.white),),
                  ],
                ),
                //plus button
                GestureDetector(
                  onTap: onTap,
                child:Container(
                    padding:  EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(12),
                      bottomRight: Radius.circular(12) )),
                    child:const Icon(
                      Icons.add,color: Colors.white,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    //with a given cat we should be able to fill up the cattile
  }
}
