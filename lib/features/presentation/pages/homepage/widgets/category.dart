import 'package:bk_flutter_bloc/features/presentation/bloc/food_bloc.dart';
import 'package:bk_flutter_bloc/features/presentation/bloc/food_event.dart';
import 'package:bk_flutter_bloc/generated/l10n.dart';
import 'package:bk_flutter_bloc/features/presentation/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    
    final FoodsBloc foodsBloc = BlocProvider.of<FoodsBloc>(context);

    List<String> categories = [
      S.of(context).PopularDishes,
      S.of(context).Combo,
      S.of(context).Shrimp,
      S.of(context).Hamburgers,
      S.of(context).Cheeseburgers,
      S.of(context).Drinks,
      S.of(context).Desserts,
      S.of(context).Rolls,
      S.of(context).OthersDishes,
    ];

    List<FoodsEvent> eventStr = [
      PopularDishes(),
      Combo(),
      Shrimp(),
      Hamburgers(),
      Cheeseburgers(),
      Drinks(),
      Desserts(),
      Rolls(),
      OthersDishes(),
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => buildCateroies(
        categories,
        index,
        foodsBloc,
        eventStr,
      ),
    );
  }

  Widget buildCateroies(
    List<String> categories,
    int index,
    FoodsBloc foodsBloc,
    List<dynamic> eventStr,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        foodsBloc.add(eventStr[index]);
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(roundOffFromCategory),
          color:
              selectedIndex == index ? Colors.amber[400] : Colors.transparent,
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontSize: sizeTextFromCategory,
            color: selectedIndex == index ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
