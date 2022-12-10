

import 'package:projects_study/products/model/nutrients_product_model.dart';

class ProductModel {
  ProductModel({
    this.id,
    this.code,
    this.imageUrl,
    required this.nutriments,
    this.productName,
    this.servingSize,
    this.addedOn,
  });

  final String? id;
  final String? code;
  final String? imageUrl;
  final NutrimentsModel? nutriments;
  final String? productName;
  final String? servingSize;
  final DateTime? addedOn;

  ProductModel copyWith({
    String? id,
    String? code,
    String? imageUrl,
    NutrimentsModel? nutriments,
    String? productName,
    String? servingSize,
    DateTime? addedOn,
  }) =>
      ProductModel(
        id: id ?? this.id,
        code: code ?? this.code,
        imageUrl: imageUrl ?? this.imageUrl,
        nutriments: nutriments ?? this.nutriments,
        productName: productName ?? this.productName,
        servingSize: servingSize ?? this.servingSize,
        addedOn: addedOn ?? this.addedOn,
      );

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
    code: json["code"],
    imageUrl: json["image_url"],
    nutriments: json["nutriments"] == null || json["nutriments"].isEmpty
        ? null
        : NutrimentsModel.fromMap(json["nutriments"]),
    productName: json["product_name"].toString(),
    servingSize: json["serving_size"],
    addedOn: json["added_on"],
  );

  factory ProductModel.fromFirebaseMap(Map<dynamic, dynamic> json, String value) => ProductModel(
    id: value,
    code: json["code"] ?? '',
    imageUrl: json["image_url"] ?? '',
    nutriments: json["nutriments"] == null || json["nutriments"].isEmpty
        ? null
        : NutrimentsModel.fromFirebaseMap(json["nutriments"]),
    productName: json["product_name"] ?? '',
    servingSize: json["serving_size"] ?? '',
    addedOn: DateTime.parse(json["added_on"]),
  );

  Map<String, dynamic> toMap() => {
    'code': code,
    'image_url': imageUrl,
    'nutriments': nutriments?.toMap(),
    'product_name': productName,
    'serving_size': servingSize,
    'added_on': addedOn?.toIso8601String(),
  };
}