import 'package:bk_flutter_bloc/features/presentation/widgets/category.dart';
import 'package:bk_flutter_bloc/features/presentation/widgets/foods_list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5, top: 5),
          height: size.height * 0.08,
          child: Categories(),
        ),
        Expanded(child: FoodsList()),
      ],
    );
  }
}
