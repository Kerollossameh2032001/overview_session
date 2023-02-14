import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';

import '../../core/constants/constant_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          height: 35.0,
          width: 35.0,
          decoration: BoxDecoration(
            color: ConstantColor.iconBackgroundColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: const Iconify(HeroiconsSolid.view_grid,
              size: 12.0, color: ConstantColor.iconColor),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(5.0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: ConstantColor.iconBackgroundColor,
            image: const DecorationImage(
              image: AssetImage('assets/images/model.PNG'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
        )
      ],
    );
  }
}