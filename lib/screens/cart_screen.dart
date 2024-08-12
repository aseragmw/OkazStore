import 'package:flutter/material.dart';
import '../wigets/custom_nav_bar.dart';
import '../wigets/custrom_appbar.dart';

class CartScreen extends StatelessWidget {
  

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: CustomNavBar(),
     
    );
  }
}
