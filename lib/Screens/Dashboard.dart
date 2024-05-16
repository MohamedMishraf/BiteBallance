import 'package:bite_balance/Screens/Login.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(color: Colors.blueAccent,
                      borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(30)),
                  ),
                ),
                Center(
                    child: Transform.translate(
                      offset: const Offset(0.0,110.0),
                      child: const Text("Welcome 'User'",
                        style: TextStyle(fontSize: 25,color: Colors.white),),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 15),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.power_settings_new,color: Colors.white,),
                        Text("Log Out ",style: TextStyle(color: Colors.white),)

                      ],
                    ),
                  ),
                )
              ]
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                      child: const Center(child: Text("Breakfast",style: TextStyle(fontSize: 15,color: Colors.white),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                      child: const Center(child: Text("Lunch",style: TextStyle(fontSize: 15,color: Colors.white),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                      child: const Center(child: Text("Dinner",style: TextStyle(fontSize: 15,color: Colors.white),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                      child: const Center(child: Text("Snacks",style: TextStyle(fontSize: 15,color: Colors.white),)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
