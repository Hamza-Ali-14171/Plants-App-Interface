import 'package:flutter/material.dart';
import 'package:ui_interface/cartItems.dart';
import 'package:ui_interface/cart_item.dart';

class Component extends StatelessWidget {
  final String imageUrl;
  final String text1;
  final String text2;
  const Component(
      {super.key,
      required this.imageUrl,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 280,
      decoration: BoxDecoration(
          color: Colors.lightGreen, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blueGrey),
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    text1,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    text2,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    cartItems.add(CartItem(
                        name: text1,
                        imageUrl2: imageUrl,
                        price: text2,
                        quantity: 1));
                  },
                  child: Text('Add To Cart'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
