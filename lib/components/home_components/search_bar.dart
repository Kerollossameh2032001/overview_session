import 'package:flutter/material.dart';

import '../../core/constants/constant_color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white70,
      style: const TextStyle(
        color: Colors.white70,
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: ConstantColor.hintTextColor,
        hintStyle: const TextStyle(color: ConstantColor.hintTextColor),
        hintText: 'Find Your Coffee....',
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        fillColor: ConstantColor.searchBarFill,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}