import 'package:bloc_app/data/model/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductModel> {
  ProductCubit(ProductModel initialState) : super(initialState);

  void showProductModelDetails(ProductModel productModel) => emit(productModel);
  // void popToPosts() => emit(null);
}
