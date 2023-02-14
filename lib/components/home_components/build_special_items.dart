import 'package:flutter/material.dart';

import '../../core/constants/constant_color.dart';

class BuildSpecialItems extends StatelessWidget {
  const BuildSpecialItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            ConstantColor.gradientTopLeft,
            ConstantColor.gradientTopLeft,
            ConstantColor.gradientBottomRight,
          ]),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            height: 115,
            width: 125,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image:
                    AssetImage('assets/images/beansbottom.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.0)),
          ),
          const SizedBox(
              width: 150,
              child: Text(
                "5 Coffee Beans You \n Must Try!",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ))
        ],
      ),
    );
  }
}