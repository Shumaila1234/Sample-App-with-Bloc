import 'package:bloc/bloc.dart';
import 'package:bloc_app/data/model/product_model.dart';
import 'package:bloc_app/data/repositories/product_repository.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;

  ProductBloc(this._productRepository) : super(ProductLoadingState()) {
    on<LoadProductEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final product = await _productRepository.getProduct();
        emit(ProductLoadedState(product));
      } catch (e) {
        emit(ProductErrorState(e.toString()));
      }
    });
  }
}
