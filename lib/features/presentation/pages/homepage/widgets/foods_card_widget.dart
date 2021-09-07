import 'package:bk_flutter_bloc/features/presentation/size_config.dart';
import 'package:flutter/material.dart';

class FoodsCard extends StatelessWidget {
  final int index;
  final dynamic state;

  const FoodsCard({Key? key, required this.index, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 5, right: 5),
            width: size.width * 0.45,
            height: heightFoodsCard,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(roundOffFromFoodsCard),
              color: Colors.white,
            ),
            child: Column(
              children: [
               buildImage(state, index),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(roundOffFromFoodsCard),
                          bottomRight: Radius.circular(roundOffFromFoodsCard),
                        )),
                    child: Column(
                      children: [
                       buildTitle(state, index),
                       buildPrice(state, index)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildImage(dynamic state, int index) {
  return Container(
    height: heightImageFromFoodsCard,
    child: Image.network('${state.loadedFoods[index].image}'),
  );
}

Widget buildTitle(dynamic state, int index) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Text(
        '${state.loadedFoods[index].name}',
        style: TextStyle(
          fontSize: sizeTextFromFoodsCard,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: countMaxLinesInNameFoodsCard,
      ),
    ),
  );
}

Widget buildPrice(dynamic state, int index) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 15),
      child: Text(
        '${state.loadedFoods[index].price}',
        style: TextStyle(
          fontSize: sizeTextFromFoodsCard,
        ),
      ),
    ),
  );
}
