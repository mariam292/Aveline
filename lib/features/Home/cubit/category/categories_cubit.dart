import 'package:aveline/features/Home/cubit/category/category_states.dart';
import 'package:aveline/features/Home/data/models/category_data_model.dart';
import 'package:aveline/features/Home/data/data_source/home_remote_data_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<CategoriesStates> {
  CategoriesCubit() : super(CategoryInitialState());

  final HomeRemoteDataSource homeRemoteDataSource = HomeRemoteDataSource();

  Future<void> getCategory() async {
    emit(CategoryLoadingState());

    try {
      final List<CategoryDataModel> categories = await homeRemoteDataSource
          .categoryDataSoure();

      emit(CategorySuccessState(categories: categories));
    } catch (e) {
      emit(CategoryFailureState(errorMessage: e.toString()));
    }
  }
}
