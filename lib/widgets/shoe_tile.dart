import 'package:flutter/material.dart';
import 'package:sneakers_shop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  const ShoeTile({super.key, required this.shoe, required this.onTap});

  final Shoe shoe;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  shoe.imagePath,
                  fit: BoxFit.cover,
                  height: 300,
                )),
          ),

          //description
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.start,
            ),
          ),

          //price and details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(
                      height: 5,
                    ),

                    //price
                    Text(
                      "₹ ${shoe.price}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                //add button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
          //button to add to cart
        ],
      ),
    );
  }
}
