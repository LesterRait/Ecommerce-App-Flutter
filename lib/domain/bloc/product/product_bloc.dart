import 'package:bloc/bloc.dart';
import 'package:sonoffkz/domain/entity/product.dart';
import 'package:sonoffkz/domain/repository/product_repository.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc(this.productRepository) : super(ProductLoadingState()) {
    on<ProductLoadEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final List<Product> _loadedProductList =
            await productRepository.getAllProduct(event.name);
        emit(ProductLoadedState(loadedProduct: _loadedProductList));
      } catch (_) {
        emit(ProductErrorState());
      }
    });
    on<ProductEventFetch>((event, emit) {
      emit(ProductLoadingState());
      try {} catch (_) {}
    });
  }
}
