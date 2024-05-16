import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),

              const Positioned(
                top: 60,
                  right: 50,
                  child: CircleAvatar(
                    radius: 50,
                  )),
              const Positioned(
                top: 70,
                  right: 65,
                  child: Icon(Icons.person,size: 70,)),

              const Positioned(
                top: 65,
                  left: 30,
                  child: Text("My Profile",
                    style: TextStyle(fontSize: 30,color: Colors.white),)),
              Padding(
                padding: const EdgeInsets.only(top: 110,left: 30),
                child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ),
                ),
                            ),
              ),
          ],
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(top: 50,left: 50),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Name : ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("Age : ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("Gender : ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("Dietary Preference : ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("Allergies : ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("Health goal : ",style: TextStyle(fontSize: 20),)
                ],
              ),
              SizedBox(width: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("John",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("45",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("Male",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("............. ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("............. ",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),

                  Text("............. ",style: TextStyle(fontSize: 20),)
                ],
              ),
            ],),
          )
        ],
      )
    );
  }
}
