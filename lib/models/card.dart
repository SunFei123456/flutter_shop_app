import 'package:flutter/material.dart';
import 'package:shop_demo/models/product.dart';

class ShoppingCart extends ChangeNotifier {
  // 1. 待售的产品
  List productList = [
    Product(
        name: "幻影无人机",
        image: 'lib/images/p1.png',
        price: 2234.0,
        description: '这是占位文本,可以忽略不计'),
    Product(
        name: "卡玛无人机",
        image: 'lib/images/p2.png',
        price: 1134.0,
        description: '这是占位文本,可以忽略不计'),
    Product(
        name: "DJI Mavic Mini 2",
        image: 'lib/images/p3.png',
        price: 3434.0,
        description: '这是占位文本,可以忽略不计'),
    Product(
        name: "幻影无人机",
        image: 'lib/images/p2.png',
        price: 12234.0,
        description: '这是占位文本,可以忽略不计'),
    Product(
        name: "DJI Mavic Air 2",
        image: 'lib/images/p4.png',
        price: 123234.0,
        description: '这是占位文本,可以忽略不计'),
  ];

  // 2. 加入购物车的产品
  List  cartList = [];

  // 3. 获取待售产品
  List getProductList() => productList;


  // 4. 获取购物车的产品
  List getCartList() => cartList;

  // 5. 加入购物车
  void addToCart(Product product) {
    cartList.add(product);
    notifyListeners();
  }

  // 6. 移除购物车
  void removeFromCart(Product product) {
    cartList.remove(product);
    notifyListeners();
  }

}
