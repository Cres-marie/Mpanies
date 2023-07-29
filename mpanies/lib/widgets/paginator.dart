import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../models/product.dart';
import '../utils/constants.dart';

class Paginator extends StatefulWidget {
  const Paginator({super.key});

  @override
  State<Paginator> createState() => _PaginatorState();
}

class _PaginatorState extends State<Paginator> {
  final List<Product> products = [
    // Your list of products...
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
    Product(
      imageUrl: 'images/shop-new-14.png',
      description: 'Product 2 Description',
      price: '\$7.50'
    ),
    
  ];

  int _currentPage = 0; // Default current page is 1
  int _itemsPerPage = 4; // Number of products to display per page
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: bpadding,
      child: Column(
        children: [
          Text('WHAT\'S NEW FOR YOU'),
          SizedBox(height: 16),
          Container(
            height: MediaQuery.of(context).size.height/1.3,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: (products.length / _itemsPerPage).ceil(),
              controller: PageController(
                initialPage: _currentPage,
              ),
              onPageChanged: (page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, pageIndex) {
                final startIndex = pageIndex * _itemsPerPage;
                final endIndex = (pageIndex + 1) * _itemsPerPage;
                final currentPageProducts = products.sublist(
                  startIndex,
                  endIndex.clamp(0, products.length), // To handle the last page with fewer items
                );

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: currentPageProducts.length,
                  itemBuilder: (context, index) {
                    final product = currentPageProducts[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Image.asset(
                                product.imageUrl,
                                //fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              product.description,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 8),
                            Text(
                              product.price,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Page: '),
              Text(
                '${_currentPage + 1}', // Page numbers start from 1
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                ' of ${((products.length - 1) ~/ _itemsPerPage) + 1}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}