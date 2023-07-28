import 'package:flutter/material.dart';
import 'package:mpanies/widgets/container1.dart';
import 'package:mpanies/widgets/container2.dart';
import 'package:mpanies/widgets/footer.dart';
import 'package:mpanies/widgets/newsLetter.dart';
import 'package:mpanies/widgets/products.dart';

import '../widgets/carouselSlider.dart';
import '../widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  MyCarouselSlider(),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: NavBar(),
                  ),
                ],
              ),
              Container1(),
              Products(),
              Container2(),
              Products(),
              NewsLetter(),
              Footer()

              
            ],
          )
        ),
      ),

    );
  }
}