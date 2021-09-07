import 'package:bk_flutter_bloc/features/data/datasources/foods_remote_data_source.dart';
import 'package:bk_flutter_bloc/features/domain/models/food.dart';

class FoodsRepository {
  FoodsApiProvider _foodsApiProvider = FoodsApiProvider();
  Future<List<Food>> getPopularDishes() => _foodsApiProvider.getFoods();
}