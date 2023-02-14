import 'package:flutter/material.dart';
import 'package:overview_session/model/coffee_model.dart';
import '../../core/constants/constant_color.dart';
import '../../model/dummy_data.dart';


class BuildCoffeeItems extends StatelessWidget {
  const BuildCoffeeItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=> CoffeeItem(model: items[index]),
        separatorBuilder: (context,index)=>const SizedBox(width: 15),
        itemCount: items.length,
      ),
    );
  }
}

class CoffeeItem extends StatelessWidget {
  final CoffeeModel model;

  const CoffeeItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 150.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            colors: [
              ConstantColor.gradientTopLeft,
              ConstantColor.gradientTopLeft,
              ConstantColor.gradientBottomRight,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            width: 150,
            child: Stack(
              children: [
                Positioned(
                  top: 10.0,
                  left: 10.0,
                  right: 10,
                  child: Container(
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image:  DecorationImage(
                            image: AssetImage(model.image),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 85,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF342520).withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 1),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: ConstantColor.primaryColor,
                          ),
                          Text(
                            model.rate,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5),
            child: Text(
              model.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              model.subTitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
            child: Row(
              children: [
                const Text(
                  '\$',
                  style: TextStyle(
                      color: ConstantColor.primaryColor, fontSize: 18),
                ),
                const SizedBox(width: 5),
                Text(
                  model.price,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Spacer(),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      color: ConstantColor.primaryColor,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
