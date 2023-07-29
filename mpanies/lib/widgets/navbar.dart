import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: bpadding,
      decoration: BoxDecoration(
        color: banner1,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 1.8,
                child: Image.asset(
                  'images/mpanies.png',
                  height: 50, 
                  //fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Add functionality for the Home item tap
                  },
                  child: Text(
                    'Home',
                    style: navheadings
                  ),
                ),
                SizedBox(width: 30),
                InkWell(
                  onTap: () {
                    // Add functionality for the About item tap
                  },
                  child: Text(
                    'About',
                    style: navheadings
                  ),
                ),
                SizedBox(width: 30),
                InkWell(
                  onTap: () {
                    // Add functionality for the Shop item tap
                  },
                  child: Text(
                    'Shop',
                    style: navheadings
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  // Add functionality for the person icon action
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Colors.black,
                onPressed: () {
                  // Add functionality for the shopping cart icon action
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.black,
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
