import 'package:bk_flutter_bloc/features/data/repository/foods_repository.dart';
import 'package:bk_flutter_bloc/features/domain/models/food.dart';
import 'package:bk_flutter_bloc/features/presentation/bloc/food_event.dart';
import 'package:bk_flutter_bloc/features/presentation/bloc/food_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodsBloc extends Bloc<FoodsEvent, FoodsState> { 

  final FoodsRepository foodsRepository;
  
  FoodsBloc(this.foodsRepository) : super(FoodsEmptyState());

  @override
  Stream<FoodsState> mapEventToState(FoodsEvent event) async*{
    if (event is PopularDishes) {
      yield FoodsLoadingState();
      try {
        final List<Food> _loadedFoodList = await foodsRepository.getPopularDishes();
        yield FoodsLoadedState(loadedFoods: _loadedFoodList);
      } catch (error) {
        yield FoodsErrorState();
      }
    }
  }

}
