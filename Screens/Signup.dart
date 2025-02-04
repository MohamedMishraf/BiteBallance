import 'package:bite_balance/Screens/MyProfile.dart';
import 'package:bite_balance/Screens/ProfileCreation.dart';
import 'package:bite_balance/Screens/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blueAccent
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 130.0, left: 80),
                child: Text(
                  'Bite Balance',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomePage()));
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    minimumSize: MaterialStateProperty.all<Size>(Size(0, 40)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blueAccent,
                    ),
                  ),
                  child: const Icon(Icons.arrow_circle_left_outlined,color: Colors.white,size: 35,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Create your Account",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                            label: Text('Full Name',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.grey,
                            ),)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                            label: Text('Phone or Gmail',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.grey,
                            ),)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Password',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.grey,
                            ),)
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Confirm Password',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.grey,
                            ),)
                        ),
                      ),

                      const SizedBox(height: 20,),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileCreation()));
                        },
                        child: Container(
                          height: 53,
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

