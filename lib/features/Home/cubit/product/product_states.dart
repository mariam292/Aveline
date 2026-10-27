import 'package:aveline/features/Home/data/models/product_data_model.dart';

abstract class ProductStates {}

class ProductInitialState extends ProductStates {}

class ProductLoadingState extends ProductStates {}

class ProductFailureState extends ProductStates {
  final String errorMessage;

  ProductFailureState({required this.errorMessage});
}

class ProductSuccessState extends ProductStates {
  final List<ProductDataModel> productList;

  ProductSuccessState({required this.productList});
}
