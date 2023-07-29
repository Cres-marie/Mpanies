import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [   
            Container(
              height: MediaQuery.of(context).size.height/2.0,
              padding: bpadding,
              color: banner2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('BEAUTY DEAL', style: navheadings,),
                  SizedBox(height: 20,),
                  Text('Pick your beauty products today. 50% OFF on the most popular cosmetic',
                  style: subtext ,),
                  Text('brands. Order all classy products today!',
                  style: subtext ,)
                ],
              ),
            )
    
          ],
      ),
    );
  }
}