import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mpanies/utils/constants.dart';

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
          height: MediaQuery.of(context).size.height,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          //aspectRatio: 16 / 9,
          enlargeCenterPage: true,
          viewportFraction: 1.0, // Set viewportFraction to 1.0 for full width images
        ),
        items: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: banner2,
                  child: Transform.scale(
                    scale: 0.9,
                    child: Image.asset('images/slider-1.jpg',alignment: Alignment.centerLeft,)
                  )
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 15, 
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: Column(
                    children: [
                      Text('SKIN LIGHTENING'),
                      
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Wrap(
                              children: [
                                Text(
                                  'Deal with hyperpigmentation, Mcompanies skin lightening products are',
                                  style: TextStyle(fontSize: 16,),
                                ),
                                Text(
                                  ' formulated to even out skin tone and restore skin\'s natural color. Get even, clear, and radiant skin.',
                                  style: TextStyle(fontSize: 16,),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, // Set background color to black
                                //color: Colors.white, // Set text color to white
                                elevation: 4, // Set the elevation shadow
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                              ),
                              child: Text('View More',style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                      ),                      
                    ],
                  )
                )
              ]
            ),
        

            //height: MediaQuery.of(context).size.height,
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Transform.scale(
                    scale: 0.8,
                    child: Image.asset('images/slider-2.jpg', alignment: Alignment.centerRight ))
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 15, 
                  left: MediaQuery.of(context).size.width * 0.05,
                  child: Column(
                    children: [
                      Text('SKIN LIGHTENING'),
                      
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              alignment: WrapAlignment.start,
                              children: [
                                Text(
                                  'Deal with hyperpigmentation, Mcompanies skin lightening products are',
                                  style: TextStyle(fontSize: 16,),
                                ),
                                Text(
                                  ' formulated to even out skin tone and restore skin\'s natural color. Get even, clear, and radiant skin.',
                                  style: TextStyle(fontSize: 16,),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, // Set background color to black
                                //color: Colors.white, // Set text color to white
                                elevation: 4, // Set the elevation shadow
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set border radius
                              ),
                              child: Text('View More',style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                        
                      ),
                      
    
                    ],
                  
                  )
                )
              ]
            ),
          
        ]
      )
    );
    }
    );
  }
}