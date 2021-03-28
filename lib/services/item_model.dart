import 'package:flutter/material.dart';

class Item {
  String productId;
  String productName;
  String productCost;
  String productBrand;
  String productCategory;
  String productColor;
  String productMaterial;
  String productImage;
  String productAvailability;
  String productLaunchDate;
  String productSummary;

  Item(
      {this.productAvailability,
      this.productBrand,
      this.productCategory,
      this.productColor,
      this.productCost,
      this.productId,
      this.productImage,
      this.productLaunchDate,
      this.productMaterial,
      this.productName,
      this.productSummary});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        productAvailability: json['productAvailability'],
        productBrand: json['productBrand'],
        productCategory: json['productCategory'],
        productColor: json['productColor'],
        productCost: json['productCost'],
        productId: json['productId'],
        productImage: json['productImage'],
        productLaunchDate: json['productLaunchDate'],
        productMaterial: json['productMaterial'],
        productName: json['productName'],
        productSummary: json['productSummary']);
  }
}
