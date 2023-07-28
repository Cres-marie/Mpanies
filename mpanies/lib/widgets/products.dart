import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

import '../models/product.dart';


class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<Product> products = [
    Product(
      imageUrl: 'images/shop-new-4.png',
      description: 'Product 1 Description',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-14.png',
      description: 'Product 2 Description',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-21.png',
      description: 'Product 3 Description',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-22.png',
      description: 'Product 3 Description',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-23.png',
      description: 'Product 1 Description',
      price: '\$7.50'
    ),
    
    // Add more products as needed
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: bpadding,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.
        children: [
          Text('WHAT\'S NEW FOR YOU'),
          SizedBox(height: 16),
          Container(
            height: MediaQuery.of(context).size.height/1.1,
            width:MediaQuery.of(context).size.width, // Adjust the height as per your requirement
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              products[index].imageUrl,
                              //fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            products[index].description,
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 8),
                          Text(
                            products[index].price,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
