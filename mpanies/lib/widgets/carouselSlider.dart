import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

import 'navbar.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/1.27,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 9,
          enlargeCenterPage: true,
          viewportFraction: 1.0, // Set viewportFraction to 1.0 for full width images
          autoPlayCurve: Curves.fastOutSlowIn,

        ),
        items: [
            Container(
              width: MediaQuery.of(context).size.width,
              height:300,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                    Transform.scale(
                      scale: 1.1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0),
                        child: Image.asset('images/slider-2.png',alignment:Alignment.topLeft,height: MediaQuery.of(context).size.height/0.2),
                      ),
                    ),
                  
                  Expanded(
                    child: Container(
                    padding: bpadding,
                    margin: EdgeInsets.only(top: 80, right: 120),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          
                          Text('SKIN LIGHTENING', style: headings,),
                          SizedBox(height: 40,),
                          Text(
                            'Deal with hyperpigmentation, Mpanies skin lightening products are formulated to even out skin tone and restore skin\'s natural color. Get even, clear, and radiant skin.',
                              style: subtext,
                          ),
                          SizedBox(height: 40,),    
                          Container(
                            height: 60,
                            width: 140,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, // Set background color to black
                                //color: Colors.white, // Set text color to white
                                elevation: 4, // Set the elevation shadow
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                              ),
                              child: Text('View More',style: TextStyle(fontSize: 16),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              //padding: bpadding,
              //height: MediaQuery.of(context).size.height / 9.8,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                    padding: bpadding,
                    margin: EdgeInsets.only(top: 80, left: 120),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Text('SKIN LIGHTENING', style: headings,),
                          SizedBox(height: 40,),
                          Text(
                            'Deal with hyperpigmentation, Mpanies skin lightening products are formulated to even out skin tone and restore skin\'s natural color. Get even, clear, and radiant skin.',
                              style: subtext,
                          ),
                          SizedBox(height: 40,),    
                          Container(
                            height: 60,
                            width: 140,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, // Set background color to black
                                //color: Colors.white, // Set text color to white
                                elevation: 4, // Set the elevation shadow
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                              ),
                              child: Text('View More',style: TextStyle(fontSize: 16),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  
                    Transform.scale(
                      scale: 1.1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60.0),
                        child: Image.asset('images/slider-3.png',alignment:Alignment.topLeft,height: MediaQuery.of(context).size.height/0.4),
                      ),
                    ),
                  

                ],
              ),
            ),
        ]
      )
    );
    }
    );
  }
}