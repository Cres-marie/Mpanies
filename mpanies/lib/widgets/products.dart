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
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-14.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-21.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-22.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    Product(
      imageUrl: 'images/shop-new-23.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    
    // Add more products as needed
  ];

  int _currentPage = 0; // Default current page is 1
  int _itemsPerPage = 4; // Number of products to display per page

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: bpadding,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Text('WHAT\'S NEW FOR YOU', style: TextStyle(fontSize: 20),),
          ),
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
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Image.asset(
                                product.imageUrl,
                                //fit: BoxFit.cover,
                              ),
                            ),
                            
                            //SizedBox(height: 5),
                            Text(
                              product.description,
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  product.price,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 25,),
                                Container(
                                  height: 40,
                                  //width: 50,
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black, // Set background color to black
                                //color: Colors.white, // Set text color to white
                                      elevation: 4, // Set the elevation shadow
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                                    ),
                                    child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, size: 20,)),
                                  ),
                                )
                              ],
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
          SizedBox(height: 15),
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
