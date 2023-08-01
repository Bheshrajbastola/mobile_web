import 'package:dio/dio.dart';
import 'package:jobhunt/core/network/remote/HttpServices.dart';
import 'package:jobhunt/core/shared_preference/categoryResponse/get_category_response.dart';
import 'package:jobhunt/core/shared_preference/categoryResponse/get_category_with_count_response.dart';
import 'package:jobhunt/config/constant/url.dart';
import 'package:jobhunt/screens/applicant/data/model/category/category_dropdown.dart';

class CategoryAPI {
  Future<CategoryWithCountResponse?> getAllCategories() async {
    CategoryWithCountResponse? categoryResponse;
    var url = baseUrl + categoryUrl;
    var dio = HttpServices().getDioInstance();
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        categoryResponse = CategoryWithCountResponse.fromJson(response.data);
      } else {
        categoryResponse = null;
      }
    } catch (e) {
      print(e);
    }
    return categoryResponse;
  }

  Future<List<DropdownCategory?>> getCategoriesDropdown() async {
    List<DropdownCategory?> categoryLst = [];
    CategoryResponse categoryResponse;
    var url = baseUrl + getAllCat;
    var dio = HttpServices().getDioInstance();
    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        categoryResponse = CategoryResponse.fromJson(response.data);

        for (var data in categoryResponse.data!) {
          categoryLst.add(DropdownCategory(id: data.title!, title: data.title));
        }
        print(categoryLst);
      }
    } catch (e) {
      print(e);
    }
    return categoryLst;
  }
}
