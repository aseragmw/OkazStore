import 'package:flutter/material.dart';
import 'package:okaz_store/constants/routes.dart';
import 'package:okaz_store/screens/cart_screen.dart';
import 'package:okaz_store/screens/catalog_screen.dart';
import 'package:okaz_store/screens/home_screen.dart';
import 'package:okaz_store/screens/personal_profile_screen.dart';
import 'package:okaz_store/screens/wishloist_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      homeScreenRoute: (context) =>  HomeScreen(),
      cartScreenRoute: (context) => const CartScreen(),
      personalProfileScreenRoute: (context) => const PersonalProfileScreen(),
      wishlistScreenRoute: (context) => const WishlistScreen(),
      catalogScreenRoute: (context) => const CatalogScreen(),
    },
    home:  HomeScreen(),
  ));
}
