import 'package:equatable/equatable.dart';

abstract class FoodsEvent extends Equatable {
  const FoodsEvent();

  @override
  List<Object?> get props => [];
}

class PopularDishes extends FoodsEvent {}

class Combo extends FoodsEvent {}

class Shrimp extends FoodsEvent {}

class Hamburgers extends FoodsEvent {}

class Cheeseburgers extends FoodsEvent {}

class Drinks extends FoodsEvent {}

class Desserts extends FoodsEvent {}

class Rolls extends FoodsEvent {}

class OthersDishes extends FoodsEvent {}


