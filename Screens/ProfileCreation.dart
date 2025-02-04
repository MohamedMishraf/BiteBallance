import 'package:flutter/material.dart';

class ProfileCreation extends StatefulWidget {
  const ProfileCreation({super.key});

  @override
  State<ProfileCreation> createState() => _ProfileCreationState();
}

List<String> Gender = ['Male','Female'];

class _ProfileCreationState extends State<ProfileCreation> {

  bool firstValue = false;
  bool secondValue = false;
  bool thirdValue = false;
  bool forthValue = false;
  bool fifthValue = false;
  bool sixthValue = false;

  String currentGender = Gender[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Profile",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white, // Set the desired color for the back button
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintText: "Name",
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20,right: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintText: "Age",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gender"),
              // Radio(
              //   value: Gender[0],
              //   groupValue: currentGender,
              //   onChanged: (value) {
              //     setState(() {
              //       currentGender = value.toString();
              //     });
              //   },
              // ),
              // Text("Male"),
              // Radio(
              //   value: Gender[1],
              //   groupValue: currentGender,
              //   onChanged: (value) {
              //     setState(() {
              //       currentGender = value.toString();
              //     });
              //   },
              // ),
              // Text("Female")
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Allergies : "),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(value: firstValue, onChanged: (value){
                        setState(() {
                          firstValue = value!;
                        });
                      }),
                      const Text("Allergy 1"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: thirdValue, onChanged: (value){
                        setState(() {
                          thirdValue = value!;
                        });
                      }),
                      const Text("Allergy 3"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: fifthValue, onChanged: (value){
                        setState(() {
                          fifthValue = value!;
                        });
                      }),
                      const Text("Allergy 5"),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(value: secondValue, onChanged: (value){
                        setState(() {
                          secondValue = value!;
                        });
                      }),
                      const Text("Allergy 2"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: forthValue, onChanged: (value){
                        setState(() {
                          forthValue = value!;
                        });
                      }),
                      const Text("Allergy 4"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: sixthValue, onChanged: (value){
                        setState(() {
                          sixthValue = value!;
                        });
                      }),
                      const Text("Allergy 6"),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dietary preference"),
              SizedBox(width: 0,),

            ],
          ),

          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.fromLTRB(50,50,50,0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20,right: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                hintText: "Health goal",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
