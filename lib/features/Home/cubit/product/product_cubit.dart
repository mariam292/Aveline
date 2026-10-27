import 'package:aveline/features/Home/cubit/product/product_states.dart';

import 'package:aveline/features/Home/data/data_source/home_remote_data_source.dart';
import 'package:aveline/features/Home/data/models/product_data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInitialState());

  final HomeRemoteDataSource homeRemoteDataSource = HomeRemoteDataSource();

  Future<void> getProduct() async {
    emit(ProductLoadingState());

    try {
      final List<ProductDataModel> productList = await homeRemoteDataSource
          .productDataSource();

      emit(ProductSuccessState(productList: productList));
    } catch (e) {
      emit(ProductFailureState(errorMessage: e.toString()));
    }
  }
}
