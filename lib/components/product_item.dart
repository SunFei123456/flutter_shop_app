import 'package:flutter/material.dart';
import 'package:shop_demo/models/product.dart';

class ProductItem extends StatelessWidget {
  Product product;
  void Function()? onTap;
  ProductItem({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        padding: const EdgeInsets.only(top: 12, bottom: 0, left: 16, right: 0),
        width: 300,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // product image
            Image.asset(product.image, width: 300, height: 300),
            // name
            // description
            Center(
              child: Text(
                product.description,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
                textAlign:TextAlign.center,
              ),
            ),

            // price + details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () => onTap!(), 
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )

            // buttom to add to cart
          ],
        ),
      ),
    );
  }
}
