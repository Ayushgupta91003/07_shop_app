import 'package:flutter/material.dart';
import 'package:shop/cart_page.dart';
import 'package:shop/global_variables.dart';
import 'package:shop/product_card.dart';
import 'package:shop/product_details_page.dart';
import 'package:shop/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currPage = 0;
  List<Widget> pages = const [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currPage,
        children: pages,
      ),

      // pages[currPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 35,
        onTap: (value) {
          setState(() {
            currPage = value;
          });
        },
        currentIndex: currPage,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "",
          ),
        ],
      ),
    );
  }
}
