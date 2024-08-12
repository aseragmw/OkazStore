import 'package:flutter/material.dart';
import 'package:okaz_store/constants/routes.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed(homeScreenRoute);
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed(cartScreenRoute);
              },
              icon: const Icon(Icons.shopping_cart),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed(personalProfileScreenRoute);
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
