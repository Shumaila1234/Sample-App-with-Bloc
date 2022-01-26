import 'package:bloc/bloc.dart';
import 'package:bloc_app/data/model/food_model.dart';
import 'package:bloc_app/data/repositories/food_repository.dart';
import 'package:equatable/equatable.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final FoodRepository _productRepository;

  FoodBloc(this._productRepository) : super(FoodLoadingState()) {
    on<LoadFoodEvent>((event, emit) async {
      emit(FoodLoadingState());
      try {
        final food = await _productRepository.getFood();
        emit(FoodLoadedState(food));
      } catch (e) {
        emit(FoodErrorState(e.toString()));
      }
    });
  }
}
