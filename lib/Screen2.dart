import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController conFirstName=new TextEditingController();
    TextEditingController conLastName=new TextEditingController();
    TextEditingController conEmail=new TextEditingController();
    TextEditingController conPassword=new TextEditingController();

    return Scaffold(
     body: Container(
       height: double.infinity,
       color: Color.fromRGBO(234, 64, 64, 0.7),
       padding: EdgeInsets.zero,
       child: SingleChildScrollView(
         child: Column(
           children: [
             SingleChildScrollView(
               child: Column(
                 children: [
                   Card(
                     color: Colors.grey[50],
                     shadowColor: Colors.grey,
                     elevation: 2,
                     margin: EdgeInsets.only(top: 70),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(40),
                     ),
                     child: Container(
                       padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                       height: 700,
                       width: double.infinity,
                       child: Column(
                         children: [
                           Image.asset(
                             "assets/images/logo.jpg",
                             fit: BoxFit.cover,
                             height: 170,
                             width: double.infinity,
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Container(
                             padding:
                             EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                             child: Column(
                               children: [
                                 TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   controller: conFirstName,
                                   obscureText: false,
                                   decoration: InputDecoration(
                                     hintText: "FirstName",
                                     hintStyle:
                                     TextStyle(color: Colors.grey, fontSize: 20),
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(50),
                                       borderSide:
                                       BorderSide(width: 2, color: Colors.grey),
                                     ),
                                     prefixIcon: Icon(Icons.person),
                                   ),
                                 ),
                                 SizedBox(
                                   height: 20,
                                 ),
                                 TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   controller: conLastName,
                                   obscureText: false,
                                   decoration: InputDecoration(
                                     hintText: "LastName",
                                     hintStyle:
                                     TextStyle(color: Colors.grey, fontSize: 20),
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(50),
                                       borderSide:
                                       BorderSide(width: 2, color: Colors.grey),
                                     ),
                                     prefixIcon: Icon(Icons.supervised_user_circle_sharp),
                                   ),
                                 ),
                                 SizedBox(
                                   height: 20,
                                 ),
                                 TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   controller: conEmail,
                                   obscureText: false,
                                   decoration: InputDecoration(
                                     hintText: "Email",
                                     hintStyle:
                                     TextStyle(color: Colors.grey, fontSize: 20),
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(50),
                                       borderSide:
                                       BorderSide(width: 2, color: Colors.grey),
                                     ),
                                     prefixIcon: Icon(Icons.email),
                                   ),
                                 ),
                                 SizedBox(
                                   height: 20,
                                 ),
                                 TextField(
                                   keyboardType: TextInputType.emailAddress,
                                   controller: conPassword,
                                   obscureText: true,
                                   decoration: InputDecoration(
                                     hintText: "Password",
                                     hintStyle:
                                     TextStyle(color: Colors.grey, fontSize: 20),
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(50),
                                       borderSide:
                                       BorderSide(width: 2, color: Colors.grey),
                                     ),
                                     prefixIcon: Icon(Icons.lock),

                                   ),
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 SizedBox(height: 20,),
                                 FlatButton(
                                   onPressed: (){},
                                   child: Text("Sign up",style:TextStyle(fontSize: 24)),
                                   color: Colors.black.withOpacity(0.8),
                                   textColor: Colors.white,
                                   minWidth: 350,
                                   padding: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                                 ),
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

     ),
   );
  }

}