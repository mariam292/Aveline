import 'package:aveline/features/Home/data/models/category_data_model.dart';

abstract class CategoriesStates {}

class CategoryInitialState extends CategoriesStates {}

class CategoryLoadingState extends CategoriesStates {}

class CategoryFailureState extends CategoriesStates {
  final String errorMessage;

  CategoryFailureState({required this.errorMessage});
}

class CategorySuccessState extends CategoriesStates {
  final List<CategoryDataModel> categories;

  CategorySuccessState({required this.categories});
}
