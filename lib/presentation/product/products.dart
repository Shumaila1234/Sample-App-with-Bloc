import 'package:bloc_app/bloc/food_bloc/bloc/food_bloc.dart';
import 'package:bloc_app/bloc/product_bloc/bloc/product_bloc.dart';
import 'package:bloc_app/data/repositories/food_repository.dart';
import 'package:bloc_app/data/repositories/product_repository.dart';
import 'package:bloc_app/presentation/foods/food_widget.dart';
import 'package:bloc_app/presentation/product/bottom_loader.dart';
import 'package:bloc_app/presentation/product/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductBloc(
            RepositoryProvider.of<ProductRepository>(context),
          )..add(LoadProductEvent()),
        ),
        BlocProvider(
          create: (context) => FoodBloc(
            RepositoryProvider.of<FoodRepository>(context),
          )..add(LoadFoodEvent()),
        )
      ],
      child: Scaffold(
        // backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Product Screen'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text("Products", style: TextStyle(fontSize: 25.0)),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 460,
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    if (state is ProductLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is ProductLoadedState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return index >= state.product.length
                              ? BottomLoader()
                              : Column(
                                  children: [
                                    ProductWidget(
                                        product: state.product[index]),
                                    const Divider(
                                      color: Colors.grey,
                                    )
                                  ],
                                );
                        },
                        itemCount: state.product.length,
                      );
                    }
                    if (state is ProductErrorState) {
                      return Center(
                        child: Text(state.error.toString()),
                      );
                    }
                    return Container();
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Foods", style: TextStyle(fontSize: 25.0)),
              SizedBox(
                height: 460,
                child: BlocBuilder<FoodBloc, FoodState>(
                  builder: (context, state) {
                    if (state is ProductLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is FoodLoadedState) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return index >= state.food.length
                              ? BottomLoader()
                              : Column(
                                  children: [
                                    FoodWidget(food: state.food[index]),
                                    const Divider(
                                      color: Colors.grey,
                                    )
                                  ],
                                );
                        },
                        itemCount: state.food.length,
                      );
                    }
                    if (state is FoodErrorState) {
                      return Center(
                        child: Text(state.error.toString()),
                      );
                    }
                    return Container();
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductScreen()));
                  },
                  child: const Text("Multiple List in one page")),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
