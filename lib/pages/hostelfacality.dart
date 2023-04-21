// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'collegepage.dart';
import 'colour.dart';

class hostelfacility extends StatefulWidget {
  const hostelfacility({Key? key}) : super(key: key);

  @override
  State<hostelfacility> createState() => _hostelfacilityState();
}

class _hostelfacilityState extends State<hostelfacility> {
  final int currentValue=0;
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: Container(
        child: Column(
          children: [
        
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image:AssetImage('images/harvard2.jpeg'),
                ),
              ),
            ),
            ListTile(
              // leading: Icon(Icons.arrow_drop_down_circle),
              title: Row(
                children: [

                  const Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                  SizedBox(width: 8,),

                ],

              ),
              subtitle: Row(
                children: [
                  Text(
                    'Lorem ipsum is a placeholder text Lorem ipsum ',
                    style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                  ),
                  SizedBox(width: 20,),

                  Container(

                    width: 60,
                    height: 55,


                    decoration: const BoxDecoration(
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                          offset: Offset(
                            5.0, // Move to right 5  horizontally
                            5.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("4.3",style: TextStyle(color: Colors.white),),
                        SizedBox(width: 10,),
                        Icon(Icons.star,color: Colors.white,)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const collegepage()),);
                      },
                      child: const Text('About college',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                    ),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed:  (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const hostelfacility()),);
                      },
                      child: const Text('Hostel facility',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    ),
                    const SizedBox(height: 28),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed:  (){},
                      child: const Text('Q & A',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                    ),
                    const SizedBox(height: 28),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed:  (){},
                      child: const Text('Events',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,

                    ),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(

                            subtitle: Container(
                              margin: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  color: kBg,

                                  child: Row(
                                    children: [
                                      Icon(Icons.bed_outlined,color: Colors.white,),
                                      Text("4",style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 40,
                                  height: 30,
                                  // color: kBg,
                                  decoration: BoxDecoration(border: Border.all(color: Color(0xFF035AA6))),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bed_outlined,color: Colors.blueAccent,),
                                      Text("3",style: TextStyle(color: Colors.blueAccent),)
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 40,
                                  height: 30,
                                  // color: kBg,
                                  decoration: BoxDecoration(border: Border.all(color: Color(0xFF035AA6))),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bed_outlined,color: Colors.blueAccent,),
                                      Text("2",style: TextStyle(color: Colors.blueAccent),),
                                    ],
                                  ),
                                ), 
                                

                                Container(
                                  width: 40,
                                  height: 30,
                                  // color: kBg,
                                  decoration: BoxDecoration(border: Border.all(color: Color(0xFF035AA6))),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bed_outlined,color: Colors.blueAccent,),
                                      Text("1",style: TextStyle(color: Colors.blueAccent),)
                                    ],
                                  ),
                                ),



                              ],
                            ),
                            ),

                          ),

                        ),

                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Container(

                                child: Image.asset("images/room1.jpg",width: 80,),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Image.asset("images/room2.jpg",width: 60,),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Image.asset("images/room3.jpg",width: 60,),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Image.asset("images/room4.jpg",width: 60,),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Image.asset("images/room5.jpg",width: 60,),
                              ),

                            ],

                        ),
                         ),


                        Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: const Duration(milliseconds: 500),
                                  width: index == currentValue ? 40 : 20,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF035AA6),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              )),
                            )
                        ),
                      ],
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,

                    ),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(

                            title: Row(
                              children: [
                                Column(
                                  children: [
                                    Text('GHJK Engineering Hostel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                                    SizedBox(height: 20,),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          Text("Lorem ipsum dolor sit amet"),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(width: 40,),
                                Container(
                                  width: 60,
                                  height: 35,
                                  color: Colors.green,
                                  child: Row(
                                    children: [
                                      SizedBox(height: 10,),
                                      Text("4.3",style: TextStyle(color: Colors.white),),
                                      SizedBox(width: 10,),
                                      Icon(Icons.star,color: Colors.white,)

                                    ],
                                  ),
                                ),

                              ],
                            ),

                            subtitle:


                            Text(' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.consectetur adipiscing elit '),

                          ),

                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,

                    ),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(


                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Facilities ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            ),


                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.house_outlined),
                                    Text("college in 400mtrs"),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Icon(Icons.bathtub_outlined),
                                    Text(" Bathroom 2"),
                                  ],
                                ),

                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,

                    ),
                    child: Column(
                      children: [
                        Card(
                          // child: ListTile(
                          //
                          //   title: Text('Apply '),
                          //
                          //
                          //   subtitle:Image(image: AssetImage('images/map1.jpg'),height: 162,),
                          // ),
                          child: ElevatedButton(
                            style: style,
                            onPressed: () {},
                            child: const Text('Apply Now'),
                          ),

                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
