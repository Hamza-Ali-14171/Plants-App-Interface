import 'package:flutter/material.dart';
import 'package:ui_interface/cartItems.dart';

class ShopCart extends StatefulWidget {
  static const id = 'shop_cart';
  const ShopCart({super.key});

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  void add(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void decrease(int index) {
    setState(() {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Items'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Cart is Empty'))
          : SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Hello, Freinds !',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Welcome to your cart . Looks like you had fun!',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
                      child: Container(
                        height: 500,
                        width: 390,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Color(0xffd3d3d3), width: 2)),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: cartItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                color: const Color.fromARGB(255, 169, 184, 191),
                                elevation: 10,
                                child: ListTile(
                                  leading: Container(
                                    height: 200,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                cartItems[index].imageUrl2),
                                            fit: BoxFit.cover)),
                                  ),
                                  title: Text(cartItems[index].name),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'price: \$${cartItems[index].price}'),
                                      Row(
                                        children: [
                                          Text(
                                              'Qty: ${cartItems[index].quantity}'),
                                          IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {
                                              add(index);
                                            },
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                decrease(index);
                                              },
                                              icon: Icon(Icons.remove))
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      setState(() {
                                        cartItems.removeAt(index);
                                      });
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
