import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/cosmetics.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop),
        ),
      ),
      child: Stack(
        children: [          
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'CLEAN ORGANIC AND NATURAL COSMETIC PRODUCTS',style: bheadings),                    
                  Text('Deal with hyperpigmentation, Beaux skin lightening products are formulated to even out skin tone and restore the skin’s natural colorget even, clear and radiant',style: bheadings),
                ]
              ),
            )
        ],
      ),
    );
  }
}
