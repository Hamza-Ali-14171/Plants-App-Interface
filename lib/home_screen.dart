import 'package:flutter/material.dart';
import 'package:ui_interface/card.dart';
import 'package:ui_interface/log_ui.dart';
import 'package:ui_interface/shop_cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> plants = [
      Component(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJPLKv7h8Qqx1rWjWZgyvRnpXgMn3Kl6n5tg&s',
          text1: 'OutDoor Plants',
          text2: " 1900 \$"),
      SizedBox(
        width: 15,
      ),
      Component(
        imageUrl:
            'https://sites.create-cdn.net/siteimages/37/4/7/374765/20/4/9/20490945/1000x997.jpg?1681861667',
        text1: 'Desk Plant',
        text2: '50 \$',
      ),
      SizedBox(
        width: 15,
      ),
      Component(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpv2-RVT8c09wrfYMCzB1ibRjb8o5WtjG-sQ&s',
          text1: 'Organic Fertilizers',
          text2: '200  \$'),
      SizedBox(
        width: 15,
      ),
      Component(
          imageUrl:
              'https://cdn11.bigcommerce.com/s-3c8l9ljcjn/images/stencil/1280x1280/products/28665/32665/79W0404B_22__76032__21489.1689786519.jpg?c=1',
          text1: 'Tools',
          text2: '400 \$'),
      SizedBox(
        width: 15,
      ),
      Component(
          imageUrl:
              'https://cdn-bkjpo.nitrocdn.com/FIRiXZYTjwNkQkpWjWZcWBehGaEanfsH/assets/images/optimized/rev-7ef65f1/etree.pk/wp-content/uploads/2021/09/Low-Maintenance-Indoor-Plants-in-Pakistan-Ideal-for-Home-Decoration.jpg',
          text1: 'Indoor Plants',
          text2: '50 \$')
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.lightGreen,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn1.vectorstock.com/i/1000x1000/23/55/flower-pot-and-plant-logo-vector-21052355.jpg',
                ),
                radius: 25,
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                'PLANT PALS',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              subtitle: Text(
                'Plant that matches everyone needs',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFAF9F6),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 0,
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.home,
                    size: 20,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Home',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.person_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogUi()));
                  },
                ),
                TextButton.icon(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 20,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Shopping',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShopCart()));
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text('shop by category',
                  style: TextStyle(
                      fontSize: 25, decoration: TextDecoration.underline))),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 145),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: plants.length,
                  itemBuilder: (context, index) {
                    return plants[index];
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
