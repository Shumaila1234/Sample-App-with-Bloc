part of 'food_bloc.dart';

abstract class FoodState extends Equatable {}

class FoodLoadingState extends FoodState {
  @override
  List<Object?> get props => [];
}

//loaded state
class FoodLoadedState extends FoodState {
  final List<FoodModel> food;

  FoodLoadedState(this.food);

  @override
  List<Object?> get props => [food];
}

//error statte
class FoodErrorState extends FoodState {
  final String error;

  FoodErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
