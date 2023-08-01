import 'package:jobhunt/core/shared_preference/categoryResponse/get_category_with_count_response.dart';
import 'package:jobhunt/screens/applicant/data/data_source/category_api.dart';
import 'package:jobhunt/screens/applicant/data/model/category/category_dropdown.dart';

class CategoryRepository {
  Future<CategoryWithCountResponse?> getAllCategory() async {
    return await CategoryAPI().getAllCategories();
  }

  Future<List<DropdownCategory?>> getCategoriesDropdown() async {
    return await CategoryAPI().getCategoriesDropdown();
  }
}
