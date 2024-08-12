import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../wigets/custom_nav_bar.dart';
import '../wigets/custrom_appbar.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final catalog = ModalRoute.of(context)?.settings.arguments as MyCategory;
    return Scaffold(
      appBar: CustomAppBar(title: catalog.name),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
