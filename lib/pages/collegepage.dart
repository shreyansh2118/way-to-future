import 'package:flutter/material.dart';
import 'package:newproject/pages/colour.dart';
import 'package:newproject/pages/colour.dart';
import 'package:newproject/pages/hostelfacality.dart';
class collegepage extends StatefulWidget {
  const collegepage({Key? key}) : super(key: key);

  @override
  State<collegepage> createState() => _collegepageState();
}

class _collegepageState extends State<collegepage> {
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
                    height: 65,

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
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: ()=>{

                      },
                      child: const Text('About college',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    ),
                    const SizedBox(height: 28),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed:  (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const hostelfacility()),);
                      },
                      child: const Text('Hostel facility',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
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

                            title: Text('Description'),

                            subtitle:
                            Text(' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore  sed do eiusmod tempor incididunt ut labore '),

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

                            title: Text('Location: '),


                            subtitle:Image(image: AssetImage('images/map1.jpg'),height: 162,),
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

                            title: Text('Student Review '),
                            // subtitle:,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.greenAccent,
                                child: Icon(Icons.person_sharp),
                              ),

                              SizedBox(width: 10,),
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.greenAccent,
                                child: Icon(Icons.person_sharp),
                              ),

                              SizedBox(width: 10,),
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.greenAccent,
                                child: Icon(Icons.person_sharp),
                              ),

                              SizedBox(width: 10,),
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.greenAccent,
                                child: Icon(Icons.person_sharp),
                              ),

                              SizedBox(width: 10,),
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.greenAccent,
                                child: Text('+12'),
                              ),
                            ],
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

                            title: Text('Arun sai'),

                            subtitle:
                            Text(' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore consectetur adipiscing elit '),

                          ),


                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star_half_outlined,color: Colors.green,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      // color: Colors.deepOrange,

                    ),
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){

                        }, child: Text('APPLY',style: TextStyle(color: Colors.white,wordSpacing: 8),)),
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
