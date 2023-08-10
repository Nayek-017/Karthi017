import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: SafeArea(
        child:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: Column(
            children: [
              Text(" Welcome", style: TextStyle(fontSize: 30, color: Colors.black)),
              Text("Sign Up", style: TextStyle(fontSize: 30, color: Colors.blue)),
              // Center(
              //   child: Image.asset('assests/image/sign-up.png',
              //               width: 200,
              //               height: 200,),
              // ),
              SizedBox(height: 10,),
                      TextField(
                             decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              filled: true,
                               labelText: "First Name",
                               labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                               icon: Icon(Icons.person)
                              //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                             ),
                 ),
                   SizedBox(height: 10,),
                 TextField(
                             decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              filled: true,
                               labelText: "Last Name",
                               labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                               icon: Icon(Icons.person)
                              //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                             ),
                            
                 ),
                   SizedBox(height: 10,),
                  TextField(
                             decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              filled: true,
                               labelText: "Email ID",
                               labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                               icon: Icon(Icons.email_outlined),
                              //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                             ),
                             obscureText: true,
                 ),
                 SizedBox(height: 10,),
                   TextField(
                             obscureText: true,
                             decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              filled: true,
                              
                               labelText: "Password",
                               labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                               icon: Icon(Icons.key),
                              //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                             ),
                 ),

                 SizedBox(height: 10,),
                 TextField(
                  obscureText: true,
                             decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                               labelText: "PhoneNumber",
                               labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                               icon: Icon(Icons.phone)
                              //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                             ),
                 ),
                  SizedBox(height: 10,),
                    Container(
                       height: 50,
                        width: 300,
                      alignment: Alignment.center,
                     decoration: BoxDecoration(color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                        child: Text("Register ",
                                  style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),),
                    )
                   ],
                 ),
          ),
        ),  
      ),
      );
    
  }
}
            