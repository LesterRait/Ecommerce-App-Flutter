part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitialState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadedState extends ProductState {
  List<dynamic> loadedProduct;
  ProductLoadedState({required this.loadedProduct});
}

class ProductErrorState extends ProductState {}
