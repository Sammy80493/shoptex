import 'dart:convert';

import 'package:shoptex/utils/strings.dart';

class CategoryModel {
  final String categoryName;
  final String imgUrl;

  CategoryModel({
    required this.categoryName,
    required this.imgUrl,
  });

  CategoryModel copyWith({
    String? categoryName,
    String? imgUrl,
  }) {
    return CategoryModel(
      categoryName: categoryName ?? this.categoryName,
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'categoryName': categoryName});
    result.addAll({'imgUrl': imgUrl});

    return result;
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      categoryName: map['categoryName'] ?? '',
      imgUrl: map['imgUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CategoryModel(categoryName: $categoryName, imgUrl: $imgUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel &&
        other.categoryName == categoryName &&
        other.imgUrl == imgUrl;
  }

  @override
  int get hashCode => categoryName.hashCode ^ imgUrl.hashCode;
}

List<CategoryModel> categoryItems = [
  CategoryModel(categoryName: 'Phone', imgUrl: AppStrings.shopBag),
  CategoryModel(categoryName: 'Ram', imgUrl: AppStrings.shopCart),
  CategoryModel(categoryName: 'GPU', imgUrl: AppStrings.shopBag),
  CategoryModel(categoryName: 'Monitor', imgUrl: AppStrings.shopCart),
  CategoryModel(categoryName: 'CPU', imgUrl: AppStrings.shopBag),
  CategoryModel(categoryName: 'Mouse', imgUrl: AppStrings.shopCart),
  CategoryModel(categoryName: 'Keyboard', imgUrl: AppStrings.shopBag),
  CategoryModel(categoryName: 'Mousepad', imgUrl: AppStrings.shopCart),
  CategoryModel(categoryName: 'Keyboard', imgUrl: AppStrings.shopBag),
  CategoryModel(categoryName: 'Mousepad', imgUrl: AppStrings.shopCart),
  CategoryModel(categoryName: 'Keyboard', imgUrl: AppStrings.shopBag),
  CategoryModel(categoryName: 'Mousepad', imgUrl: AppStrings.shopCart),
];
