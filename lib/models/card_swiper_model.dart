import 'dart:convert';

import 'package:shoptex/utils/strings.dart';

class CardSwiperModel {
  final String imgUrl;

  CardSwiperModel({
    required this.imgUrl,
  });

  CardSwiperModel copyWith({
    String? imgUrl,
  }) {
    return CardSwiperModel(
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imgUrl': imgUrl});

    return result;
  }

  factory CardSwiperModel.fromMap(Map<String, dynamic> map) {
    return CardSwiperModel(
      imgUrl: map['imgUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CardSwiperModel.fromJson(String source) =>
      CardSwiperModel.fromMap(json.decode(source));

  @override
  String toString() => 'CardSwiperModel(imgUrl: $imgUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardSwiperModel && other.imgUrl == imgUrl;
  }

  @override
  int get hashCode => imgUrl.hashCode;
}

List<CardSwiperModel> images = [
  CardSwiperModel(imgUrl: AppStrings.shopBag),
  CardSwiperModel(imgUrl: AppStrings.shopCart),
  CardSwiperModel(imgUrl: AppStrings.shopOrder),
];
