import 'dart:async';

import 'package:testglj/data/model/category_model.dart';

abstract class Repository{
  FutureOr<CategoryModel> getCategory();
}