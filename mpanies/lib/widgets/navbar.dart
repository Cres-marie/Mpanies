import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: bpadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [          
              Image.asset('images/mpanies.png', width: 120,),
            ],
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                      
                  },
                  child: Text('Home'),
                ),
                SizedBox(width: 30,),                  
                InkWell(
                  onTap: () {
                  
                  },
                  child: Text('About'),
                ),
                SizedBox(width: 30,),
                InkWell(
                  onTap: () {
                  
                  },
                  child: Text('Shop'),
                ),
              ]
            ),
          ),
          
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
            // Add functionality for the person icon action
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
            // Add functionality for the shopping cart icon action
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
            // Add functionality for the search icon action
                },
              ),
            ],
          )

        ],
      ),

      
    );  
  }
}