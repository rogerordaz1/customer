import 'package:app/core/utils/constants.dart';
import 'package:app/data/api/api_connect.dart';
import 'package:app/data/models/models.dart';

class CategoryProvider {
  CategoryProvider();

  Future<Category> categoryList() async {
    return Category.fromJson(
        (await ApiConnect.instance.get(EndPoints.categoryList)).getBody());
  }
}
