part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class ProductLoadEvent extends ProductEvent {
  final String name;
  ProductLoadEvent({required this.name});
}

class ProductEventFetch extends ProductEvent {}
