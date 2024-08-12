import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../models/category_model.dart';
import '../models/product_model.dart';
import '../wigets/carousel_card.dart';
import '../wigets/custom_nav_bar.dart';
import '../wigets/custrom_appbar.dart';
import '../wigets/products_section.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Okaz Store'),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: MyCategory.categoriesList.length,
            itemBuilder: (context, index, realIndex) {
              return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(catalogScreenRoute,arguments: MyCategory.categoriesList[index]);
                  },
                  child: CarouselCard(categoryIndex: index));
            },
            options: CarouselOptions(
                height: 250,
                viewportFraction: 0.8,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enlargeCenterPage: true),
          ),
          const SizedBox(
            height: 10,
          ),
          ProductsSection(title: 'RECOMMENDED', products: Product.productsList),
          ProductsSection(title: 'POPULAR NOW', products: Product.productsList),
        ],
      ),
    );
  }
}
