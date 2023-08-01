import 'package:flutter_test/flutter_test.dart';
import 'package:jobhunt/screens/applicant/data/data_source/category_api.dart';
import 'package:jobhunt/core/shared_preference/categoryResponse/get_category_with_count_response.dart';
import 'package:jobhunt/screens/applicant/data/model/category/category_dropdown.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferences prefs;
  late CategoryAPI api;

  setUp(() async {
    api = CategoryAPI();
  });

  test("Job Apply Test Pass", () async {
    bool expectedResult = true;
    CategoryWithCountResponse? res = await api.getAllCategories();
    bool actualResult = res!.data != null;
    expect(actualResult, expectedResult);
  });

  test("Fetch Test Pass", () async {
    bool expectedResult = true;
    List<DropdownCategory?> res = await api.getCategoriesDropdown();
    bool actualResult = res.isNotEmpty;

    expect(actualResult, expectedResult);
  });
}
