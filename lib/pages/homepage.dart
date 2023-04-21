import 'package:flutter/material.dart';
import 'package:newproject/pages/colour.dart';
import 'package:newproject/pages/colour.dart';
import 'package:newproject/pages/showcollege.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  int _selectedTab = 0;


  _changeTab(int index) {
  setState(() {
  _selectedTab = index;
  });
  }
  // String? college;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("Way To Future"),),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
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

      body: SafeArea(


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
                          hintText: 'search for colleges, school..',
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


         SizedBox(height: 100,),

            Expanded(child: ListView(
              scrollDirection: Axis.vertical,

              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        showModalBottomSheet(context: context,
                            builder: (context){
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                children: [
                                  Container(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Text("Sort by",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                      SizedBox(width: 300,),
                                      Icon(Icons.close),
                                    ],
                                  ),

                                  ),
                                ],
                              ),

                              ListTile(
                                title: Text('Bachlore of Technology'),
                                leading: Icon(Icons.school_sharp),
                              ),
                              ElevatedButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> const showcollege()),);
                              }, child: Text('select'),),

                              ListTile(
                                title: Text('Pharmacy'),
                                leading: Icon(Icons.health_and_safety_outlined),
                              ),
                              ElevatedButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> const showcollege()),);
                              }, child: Text('select'),),

                              ListTile(
                                title: Text('Law'),
                                leading: Icon(Icons.balance),
                              ),
                              ElevatedButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> const showcollege()),);
                              }, child: Text('select'),),

                              ListTile(
                                title: Text('Managment'),
                                leading: Icon(Icons.local_activity_outlined),
                              ),
                              ElevatedButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> const showcollege()),);
                              }, child: Text('select'),),
                            ],
                          );
                        }
                        );
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage("https://www.topuniversities.com/sites/default/files/graduation-day-picture-id1066324992.jpg"),
                            opacity: 0.4,
                            fit:BoxFit.cover),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Top Colleges",style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600),),

                            Text("Search through thousands of accredited colleges and Universities online to find the right one for you. Apply in 3 min,and connect with your future.",
                              style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                      ),


                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(

                    onTap: (){
                      setState(() {
                        showModalBottomSheet(context: context,
                            builder: (context){
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            Text("Sort by",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                            SizedBox(width: 300,),
                                            Icon(Icons.close),
                                          ],
                                        ),

                                      ),
                                    ],
                                  ),
                                  ListTile(
                                    title: Text('Bachelor of Technology'),
                                    // subtitle: Text(''),
                                    leading: Icon(Icons.school_sharp),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),



                                  ListTile(
                                    title: Text('Pharmacy'),
                                    leading: Icon(Icons.health_and_safety_outlined),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),

                                  ListTile(
                                    title: Text('Law'),
                                    leading: Icon(Icons.balance),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),

                                  ListTile(
                                    title: Text('Managment'),
                                    leading: Icon(Icons.local_activity_outlined),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),
                                ],
                              );
                            }
                        );
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage("https://akm-img-a-in.tosshub.com/indiatoday/images/story/202108/us_school_reuters_1200x768.png?size=690:388",
                            ),
                            opacity: 0.6,
                            fit:BoxFit.cover),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Top Schools",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600),),

                            Text("Searching for the best school for you just got easier!With our advance School search,you can easily filter out the schools that are fit for you",
                              style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        showModalBottomSheet(context: context,
                            builder: (context){
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 20,),
                                            Text("Sort by",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                                            SizedBox(width: 300,),
                                            Icon(Icons.close),
                                          ],
                                        ),

                                      ),
                                    ],
                                  ),

                                  ListTile(
                                    title: Text('Bachelor of Technology'),
                                    // subtitle: Text(''),
                                    leading: Icon(Icons.school_sharp),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),

                                  // ListTile(
                                  //   title: Text('Bachelor of Archecture'),
                                  //   leading: Icon(Icons.note_alt),
                                  // ),
                                  // ElevatedButton(onPressed: (){
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  // }, child: Text('select'),),

                                  ListTile(
                                    title: Text('Pharmacy'),
                                    leading: Icon(Icons.health_and_safety_outlined),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),

                                  ListTile(
                                    title: Text('Law'),
                                    leading: Icon(Icons.balance),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),

                                  ListTile(
                                    title: Text('Managment'),
                                    leading: Icon(Icons.local_activity_outlined),
                                  ),
                                  ElevatedButton(onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> const showcollege()),);
                                  }, child: Text('select'),),
                                ],
                              );
                            }
                        );
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        // color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage("https://spunout.ie/wp-content/uploads/elementor/thumbs/student_taking_a_college_exam-q0ubk6jimq3ppmlo959ec77k2gvr1m3xlkwn6sb73s.jpg"),
                            opacity: 0.9,
                            fit:BoxFit.cover),
                        ),


                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Exams",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600),),

                            Text("Find an end to end information about the exams that are happining in india",
                              style: TextStyle(color: Colors.white,fontSize: 15),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),),

          ],

        ),
      ),

      ),

    );
  }
}
