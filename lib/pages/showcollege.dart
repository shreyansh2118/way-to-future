import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:newproject/pages/collegepage.dart';
import 'package:newproject/pages/colour.dart';
class showcollege extends StatefulWidget {
  const showcollege({Key? key}) : super(key: key);

  @override
  State<showcollege> createState() => _showcollegeState();
}

class _showcollegeState extends State<showcollege> {
  int _selectedTab = 0;


  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBg,
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Color(0xFF035AA6),
          unselectedItemColor: Colors.grey,
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label:'search'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_add_rounded,color: Colors.black,),label:'saved'),
            BottomNavigationBarItem(icon: Icon(Icons.auto_mode_sharp,color: Colors.black,),label:'saved'),
            BottomNavigationBarItem(icon: Icon(Icons.person_sharp,color: Colors.black,),label:'account'),

          ],),

        body: Container(


          child:
          Padding(
          padding: const EdgeInsets.all(25),

          child: Column(
          children: [
           Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Find your own way",
    style: TextStyle(fontSize: 18,
    fontWeight: FontWeight.w600),),
    SizedBox(height: 15,),
    Text("Search in 600 colleges around!"),
    ],
    ),

    Container(
    decoration: BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(11),
    ),
    child: Padding(
    padding: const EdgeInsets.all(12),
    child: Icon(Icons.notification_add_rounded,
    color: Colors.white,),

    ),
    ),
    ],
    ),

            SizedBox(height: 20,),

            Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: 300,
    height: 50,
    child: TextField(
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.search),
    hintText: "Search for Colleges,school...",
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade600),
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.shade600),
    ),
    ),
    ),
    ),

    ],
    ),
    Container(
    decoration: BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(11),
    ),
    child: Padding(
    padding: const EdgeInsets.all(12),
    child: Icon(Icons.mic,
    color: Colors.white,),

    ),
    ),
    ],
    ),


            SizedBox(height: 30,),

            Container(
              height: 40,
              child: Expanded(child: ListView(

                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 140,

                      decoration: BoxDecoration(
                        border: Border.all(width:1,)
                      ),
                      child: Text("MVGH Engineering"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 140,

                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45)
                      ),
                      child: Text("MVGH Engineering"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 140,

                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45)
                      ),
                      child: Text("MVGH Engineering"),
                    ),
                  ),


                ],
              ),),
            ),

            SizedBox(height: 30,),

            Expanded(
              child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,top: 8),
                  child: Column(
                    children: [

                    Container(
                      width:450,
                      height:250,
                      child: Card(

                        clipBehavior: Clip.antiAlias,
                          child: Column(
                           children: [
                             Column(
                               children: [
                                 Container(
                                   width: MediaQuery.of(context).size.width,
                                   height: 100,
                                   decoration: BoxDecoration(
                                     image: DecorationImage(
                                       fit: BoxFit.fill,
                                       image:AssetImage('images/harvard2.jpeg'),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ListTile(
                           // leading: Icon(Icons.arrow_drop_down_circle),
                            title: Row(
                              children: [

                                const Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                SizedBox(width: 8,),

                                Container(
                                  width: 65,
                                  height: 28,
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
                                  child: Row(
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Text("4.3",style: TextStyle(color: Colors.white),),
                                      ),
                                      SizedBox(width: 10,),
                                      Icon(Icons.star,color: Colors.white,)
                                    ],
                                  ),
                                ),
                              ],

                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  'Lorem ipsum is a placeholder text ',
                                   style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                                 ),
                                SizedBox(width: 20,),
                                ElevatedButton(onPressed: (){

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=> const collegepage()),);
                                }, child: Text('APPLY Now',style: TextStyle(fontSize: 8),)),
                              ],
                            ),
                          ),
                            Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 children: [
                                   Text('More than 1000+ students have been placed',
                              style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                             ),
                                   SizedBox(width: 15,),
                                   Icon(Icons.remove_red_eye_outlined)
                                 ],
                               ),
                            ),

                      ],
                  ),

                ),
                    ),



              ],
            ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,top: 8),
                  child: Column(
                    children: [

                      Container(
                        width:450,
                        height:250,
                        child: Card(

                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:AssetImage('images/harvard2.jpeg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListTile(
                                // leading: Icon(Icons.arrow_drop_down_circle),
                                title: Row(
                                  children: [

                                    const Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                    SizedBox(width: 8,),

                                    Container(
                                      width: 65,
                                      height: 28,
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
                                      child: Row(
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text("4.3",style: TextStyle(color: Colors.white),),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.star,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                  ],

                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Lorem ipsum is a placeholder text ',
                                      style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                                    ),
                                    SizedBox(width: 20,),
                                    ElevatedButton(onPressed: (){

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=> const collegepage()),);
                                    }, child: Text('APPLY Now',style: TextStyle(fontSize: 8),)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Text('More than 1000+ students have been placed',
                                      style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                                    ),
                                    SizedBox(width: 15,),
                                    Icon(Icons.remove_red_eye_outlined)
                                  ],
                                ),
                              ),

                            ],
                          ),

                        ),
                      ),



                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8,top: 8),
                  child: Column(
                    children: [

                      Container(
                        width:450,
                        height:250,
                        child: Card(

                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:AssetImage('images/harvard2.jpeg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListTile(
                                // leading: Icon(Icons.arrow_drop_down_circle),
                                title: Row(
                                  children: [

                                    const Text('GHJK Engineering college',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                    SizedBox(width: 8,),

                                    Container(
                                      width: 65,
                                      height: 28,
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
                                      child: Row(
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(left: 2),
                                            child: Text("4.3",style: TextStyle(color: Colors.white),),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.star,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                  ],

                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      'Lorem ipsum is a placeholder text ',
                                      style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                                    ),
                                    SizedBox(width: 20,),
                                    ElevatedButton(onPressed: (){

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=> const collegepage()),);
                                    }, child: Text('APPLY Now',style: TextStyle(fontSize: 8),)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Text('More than 1000+ students have been placed',
                                      style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),
                                    ),
                                    SizedBox(width: 15,),
                                    Icon(Icons.remove_red_eye_outlined)
                                  ],
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


        ],
    ),
        ),
    ),
    );

  }
}
