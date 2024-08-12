import 'package:flutter/material.dart';
import 'package:okaz_store/constants/routes.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Container(
        
        margin: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(wishlistScreenRoute);
          },
          // ignore: prefer_const_constructors
          icon: Icon(
            Icons.favorite,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
