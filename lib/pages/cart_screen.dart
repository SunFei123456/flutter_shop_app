import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_demo/components/card_list.dart';
import 'package:shop_demo/models/card.dart';
import 'package:shop_demo/models/product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingCart>(
      builder: (context, value, child) => Column(
        children: [
          const Text(
            "我的购物车🛒",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: value.cartList.length,
            itemBuilder: (context, index) {
              Product prd = value.cartList[index];
              return CardList(product: prd, onPressed: () => value.removeFromCart(prd),);
            },
          )),
        ],
      ),
    );
  }
}
