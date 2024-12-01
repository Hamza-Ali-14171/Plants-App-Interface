import 'package:flutter/material.dart';
import 'package:ui_interface/sign_up.dart';
import 'shop_cart.dart';

class LogUi extends StatefulWidget {
  static const id = 'log_ui';
  const LogUi({super.key});

  @override
  State<LogUi> createState() => _LogUiState();
}

class _LogUiState extends State<LogUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn1.vectorstock.com/i/1000x1000/23/55/flower-pot-and-plant-logo-vector-21052355.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Promoting Greenery ,',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'For a Better Living !',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 500,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color(0xffd3d3d3),
                        width: 2,
                        style: BorderStyle.solid)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text('value'),
                            hintText: 'xyz@example.com',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 270),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'password',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShopCart()));
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 71, 164, 74),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Forgot password ?',
                        style: TextStyle(color: Colors.blueAccent)),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                          fontSize: 30, decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 71, 164, 74),
                            borderRadius: BorderRadius.circular(28)),
                        child: Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
