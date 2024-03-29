import 'package:flutter/material.dart';

import '../utils/constants.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({super.key});

  @override
  State<NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Container(
            padding: bpadding,
            color: banner2,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('SIGN-UP TO THE MPANIES FAN CLUB TODAY',style: navheadings),
                SizedBox(height: 20,),
                Text('Subscribe to our mailing list to be notified about news, collections, and special offers',style: subtext ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Expanded(
                        flex: 1,                      
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email...',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                              ),
                            ),
                          ),
                        
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          // Add your submission logic here
                        },
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
