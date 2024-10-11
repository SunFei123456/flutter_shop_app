import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_demo/components/product_item.dart';
import 'package:shop_demo/models/card.dart';
import 'package:shop_demo/models/product.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  void addProToCard(Product prd) {
    Provider.of<ShoppingCart>(context, listen: false).addToCart(prd);
    // 提示
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Row(
        children: [
          Icon(
            Icons.check,
            color: Colors.white,
          ),
          Text("已加入购物车")
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 128, 37),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingCart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12), // 内边距
                    margin: const EdgeInsets.symmetric(horizontal: 12), // 外边距
                    decoration: BoxDecoration(
                        // 背景色 + 圆角
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "新奇好物",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF999999)),
                        ),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  const Padding(
                    padding: EdgeInsets.only(left: 22, right: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "新品上市🔥",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "查看全部",
                          style: TextStyle(fontSize: 14, color: Colors.amber),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getProductList().length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Product prd = value.getProductList()[index];

                            return ProductItem(
                              product: prd,
                              onTap: () => addProToCard(prd),
                            );
                          })),
                  const SizedBox(height: 45),
                ],
              ),
            ));
  }
}
