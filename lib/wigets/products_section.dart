import 'package:flutter/material.dart';
import 'package:okaz_store/models/product_model.dart';

class ProductsSection extends StatelessWidget {
  final List<Product> products;
  late final List<Product> filteredProducts;
  final String title;
   // ignore: prefer_const_constructors_in_immutables
   ProductsSection({super.key, required this.title, required this.products});

  @override
  Widget build(BuildContext context) {
    if (title == 'RECOMMENDED') {
      filteredProducts =
          products.where((element) => element.isRecommended).toList();
    } else if (title == 'POPULAR NOW') {
      filteredProducts =
          products.where((element) => element.isPopular).toList();
    }
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Stack(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Image.network(
                          filteredProducts[index].imgUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height / 13),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: MediaQuery.of(context).size.height / 18,
                            color: Colors.black45,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(filteredProducts[index].name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400)),
                                      Text(
                                          '${filteredProducts[index].price.toString()} Usd',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
