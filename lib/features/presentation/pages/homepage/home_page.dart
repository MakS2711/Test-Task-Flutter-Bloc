import 'package:bk_flutter_bloc/features/data/repository/foods_repository.dart';
import 'package:bk_flutter_bloc/features/presentation/bloc/food_bloc.dart';
import 'package:bk_flutter_bloc/features/presentation/pages/homepage/widgets/body.dart';
import 'package:bk_flutter_bloc/generated/l10n.dart';
import 'package:bk_flutter_bloc/features/presentation/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final foodsRepository = FoodsRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodsBloc>(
      create: (context) => FoodsBloc(foodsRepository),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).AppBar,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: (Icon(
              Icons.arrow_back,
              size: sizeIconAppBar,
            )),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: (Icon(
                Icons.info_outline,
                size: sizeIconAppBar,
              )),
              onPressed: () {},
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Body(),
      ),
    );
  }
}
