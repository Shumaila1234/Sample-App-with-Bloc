part of 'product_bloc.dart';

abstract class ProductState extends Equatable {}

//Loading state
class ProductLoadingState extends ProductState {
  @override
  List<Object?> get props => [];
}

//loaded state
class ProductLoadedState extends ProductState {
  final List<ProductModel> product;

  ProductLoadedState(this.product);

  @override
  List<Object?> get props => [product];
}

//error statte
class ProductErrorState extends ProductState {
  final String error;

  ProductErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
