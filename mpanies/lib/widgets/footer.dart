import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../utils/constants.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}
class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
      padding: bpadding,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,       
          children: [    
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('STORE', style: fheadings),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.place, color: Colors. white,),
                              Text('Kampala, Uganda', style: fsubheadings,)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.schedule, color: Colors. white,),
                              Text('09:00am - 06:00pm ', style: fsubheadings,)
                            ],
                          )
                        ],
                      ),
                    
                  
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('REACH US', style: fheadings),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.phone, color: Colors. white,),
                              Text('(0000) 123-4789', style: fsubheadings,)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.email, color: Colors. white,),
                              Text('info@example.com', style: fsubheadings,)
                            ],
                          )
                        ],
                      ),
                  
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('INFO', style: fheadings),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                              Text('Contact', style: fsubheadings,)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                              Text('Shipping & Returns', style: fsubheadings,)
                            ],
                          )
                        ],
                      ),
                    
                  

                      Row(
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SHARE WITH US', style: fheadings),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              
                              Icon(Icons.keyboard_arrow_right, color: Colors. white,),
                              
                            ],
                          ),                         
                        ],
                      ),
                    ],
                  )


                ],
              )
            
    
          
      ],
                  ),
    );
  }
}