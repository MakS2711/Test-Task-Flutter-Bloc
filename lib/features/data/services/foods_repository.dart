import 'package:bk_flutter_bloc/features/data/models/foods.dart';
import 'package:bk_flutter_bloc/features/data/services/foods_api_provider.dart';

class FoodsRepository {
  FoodsApiProvider _foodsApiProvider = FoodsApiProvider();
  Future<List<Foods>> getPopularDishes() => _foodsApiProvider.getFoods();
}