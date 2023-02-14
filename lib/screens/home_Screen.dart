import 'package:flutter/material.dart';

import '../components/home_components/build_coffee_items.dart';
import '../components/home_components/build_special_items.dart';
import '../components/home_components/home_header.dart';
import '../components/home_components/search_bar.dart';
import '../core/constants/constant_color.dart';
import '../model/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              HomeHeader(),
              SizedBox(height: 20),
              Text(
                "Find the best coffee for you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 20),
              SearchBar(),
              SizedBox(height: 20),
              BuildCoffeeItems(),
              SizedBox(height: 20),
              Text(
                "Special for you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              BuildSpecialItems()
            ],
          ),
        ),
      ),
    );
  }


}


