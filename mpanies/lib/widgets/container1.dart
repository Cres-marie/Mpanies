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
      margin: EdgeInsets.only(top:0),
      child: Column(
        
          children: [
    
            Container(
              padding: bpadding,
              color: banner2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('BEAUTY DEAL'),
                  SizedBox(height: 20,),
                  Text('Pick your beauty products today. 50% OFF on the most popular cosmetic brands. Order all classy products today!')
                ],
              ),
            )
    
          ],
      ),
    );
  }
}