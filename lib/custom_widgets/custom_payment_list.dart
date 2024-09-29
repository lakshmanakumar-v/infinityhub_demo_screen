import 'package:flutter/material.dart';

class CustomPaymentList extends StatelessWidget {
  final Color shoppingColor;
  final String text;
  final String amount;
  final String ratingPercentage;
  final Color ratingIconColor;
  final Color ratingContainerColor;
  final Color ratingPercentageColor;

  const CustomPaymentList({
    super.key,
    required this.shoppingColor,
    required this.text,
    required this.amount,
    required this.ratingContainerColor,
    required this.ratingPercentageColor,
    required this.ratingIconColor,
    required this.ratingPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15, bottom: 5),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 8,
            blurStyle: BlurStyle.outer,
            color: Colors.grey.shade500,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 35,
                decoration: BoxDecoration(
                  color: shoppingColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(text),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              amount,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ratingContainerColor,
                ),
                child: Icon(
                  Icons.auto_graph,
                  size: 15,
                  color: ratingIconColor,
                ),
              ),
              Text(
                ratingPercentage,
                style: TextStyle(
                  color: ratingPercentageColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
