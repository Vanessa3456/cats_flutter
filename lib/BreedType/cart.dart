import 'package:flutter/material.dart';
import 'package:flutter_application_8/BreedType/cats.dart';

class Cart extends ChangeNotifier{
  //list of cats for sale
  List<Cats> catsShop = [
    Cats(
        breed: 'American Curl',
        imagePath: 'lib/images/americanCurl.jpg',
        price: '25euros'),
    Cats(
        breed: 'British Shorthair ',
        imagePath: 'lib/images/britishShorthair.jpg',
        price: '30euros'),
    Cats(
        breed: 'Norwegian Forest ',
        imagePath: 'lib/images/norwegianForest.jpg',
        price: '35euros'),
    Cats(
        breed: 'Persian Shorthair ',
        imagePath: 'lib/images/persiancat.jpg',
        price: '30euros'),
  ];

  //list of cats of user cart
  List<Cats> userCart = [];

  //get list of cats for sale
  List<Cats>getCatList(){
    return catsShop;
  }

  //get whats in the cart
  List<Cats> getUserCat(){
    return userCart;
  }

  //adding items to the cart
  void addItemToCart(Cats cat){
    userCart.add(cat);
    notifyListeners();//anytime we need to update the state
  }

  //removing items from the cart
  void removeItemFromCart(Cats cat){
    userCart.remove(cat);
    notifyListeners();
  }
}
