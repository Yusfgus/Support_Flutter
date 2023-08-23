import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talabat_task/HomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formkey = GlobalKey<FormState>();
  bool? checkboxvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "talabat",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w800,
                          color: Colors.deepOrangeAccent),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign up for free",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                            validator: (value) {
                              return value!.isEmpty? 'please enter a valid password': null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: 'Name',
                                labelStyle: TextStyle(color: Colors.black38),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.deepOrangeAccent,
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              return value!.isEmpty? 'please enter a valid password': null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.black38),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.deepOrangeAccent,
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              return value!.isEmpty? 'please enter a valid password': null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.black38),
                                prefixIcon: Icon(
                                  Icons.lock_person_rounded,
                                  color: Colors.deepOrangeAccent,
                                ),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                )
                            ),
                          ),
                          SizedBox(height: 1),
                          Row(
                            children: [
                              Checkbox(value: checkboxvalue, onChanged: (value) {
                                setState(() {
                                  checkboxvalue = value;
                                });
                                },),
                              Text("Rememeber me", style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepOrangeAccent,
                ),
                margin: EdgeInsets.only(top: 180, bottom: 30, left: 20, right: 20),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){
                    if(formkey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }));
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (context){
                    //   return HomeScreen();
                    //}));
                  },
                  child: const Text("Create Accout", style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
