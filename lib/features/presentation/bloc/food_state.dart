import 'package:equatable/equatable.dart';

abstract class FoodsState extends Equatable {
  const FoodsState();
  
   @override
   List<Object?> get props => [];
}

class FoodsEmptyState extends FoodsState {}

class FoodsLoadingState extends FoodsState {}

class FoodsLoadedState extends FoodsState {
  final List<dynamic> loadedFoods;
  FoodsLoadedState({required this.loadedFoods});

  @override
   List<Object?> get props => [loadedFoods];
}

class FoodsErroState extends FoodsState {}