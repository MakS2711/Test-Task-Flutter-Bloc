import 'package:bk_flutter_bloc/features/presentation/bloc/food_bloc.dart';
import 'package:bk_flutter_bloc/features/presentation/bloc/food_state.dart';
import 'package:bk_flutter_bloc/features/presentation/widgets/foods_card_widget.dart';
import 'package:bk_flutter_bloc/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<FoodsBloc, FoodsState>(builder: (context, state) {
      if (state is FoodsEmptyState) {
        return Center(
          child: Text(
            S.of(context).EmptyState,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      }
      if (state is FoodsLoadingState)
        return Center(child: CircularProgressIndicator());

      if (state is FoodsLoadedState) {
        return GridView.builder(
            itemCount: state.loadedFoods.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: size.height*0.71/size.width*0.45,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) =>
                FoodsCard(index: index, state: state));
      }

      if (state is FoodsErroState) {
        return Center(
            child: Text(
          S.of(context).Error,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
      }
      return Center(child: CircularProgressIndicator());
    });
  }
}
