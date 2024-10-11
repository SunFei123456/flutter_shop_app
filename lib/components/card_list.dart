import 'package:flutter/material.dart';
import 'package:shop_demo/models/product.dart';

class CardList extends StatefulWidget {
  Product product;
  void Function()? onPressed;
  CardList({super.key, required this.product, required this.onPressed });

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Image.asset(widget.product.image, width: 100, height: 100),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "\$${widget.product.price}",
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed:() => widget.onPressed!(),
            icon: const Icon(
              Icons.delete,
              color: Color.fromARGB(255, 255, 77, 0),
              size: 32,
            ),
          )
        ]));
  }
}
