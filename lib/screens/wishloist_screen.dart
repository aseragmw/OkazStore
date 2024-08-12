import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../wigets/custom_nav_bar.dart';
import '../wigets/custrom_appbar.dart';

class WishlistScreen extends StatelessWidget {
  

  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}
