import 'package:flutter/material.dart';
import '../wigets/custom_nav_bar.dart';
import '../wigets/custrom_appbar.dart';

class PersonalProfileScreen extends StatelessWidget {
  

  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Personal Profile'),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}
