import 'dart:developer';

import 'package:aveline/core/token/token.dart';
import 'package:aveline/features/Home/data/models/category_data_model.dart';
import 'package:aveline/features/Home/data/models/product_data_model.dart';
import 'package:dio/dio.dart';

class HomeRemoteDataSource {
  final Dio dio = Dio();

  //categories data source

  Future<List<CategoryDataModel>> categoryDataSoure() async {
    try {
      final response = await dio.get(
        'https://accessories-eshop.runasp.net/api/categories',
        options: Options(headers: {'Authorization': 'Bearer ${Token.value}'}),
      );

      final List categoriesJson = response.data['categories'];

      List<CategoryDataModel> categoryList = [];

      for (var category in categoriesJson) {
        categoryList.add(CategoryDataModel.fromJson(category));
      }

      return categoryList;
    } on DioException catch (e) {
      log('Dio Error: ${e.message}');
      log('Status Code: ${e.response?.statusCode}');
      log('Response Data: ${e.response?.data}');
      rethrow;
    } catch (e) {
      throw Exception('error : $e');
    }
  }

  //product data source

  Future<List<ProductDataModel>> productDataSource() async {
    try {
      final response = await dio.get(
        'https://accessories-eshop.runasp.net/api/products',
        options: Options(headers: {'Authorization': 'Bearer ${Token.value}'}),
      );

      final List productsJson = response.data['items'];

      List<ProductDataModel> productList = [];

      for (var product in productsJson) {
        productList.add(ProductDataModel.fromJson(product));
      }

      return productList;
    } on DioException catch (e) {
      log('Dio Error: ${e.message}');
      log('Status Code: ${e.response?.statusCode}');
      log('Response Data: ${e.response?.data}');
      rethrow;
    } catch (e) {
      throw Exception('error : $e');
    }
  }
}
