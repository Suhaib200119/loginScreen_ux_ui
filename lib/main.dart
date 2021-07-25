import 'package:app_login_signin/Screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController conEmail = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  bool state = true;

  @override
  Widget build(BuildContext context) {
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
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                      height: 650,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/logo.jpg",
                            fit: BoxFit.cover,
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
                                  controller: conEmail,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                    border: OutlineInputBorder(
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
                                  obscureText: state,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                    border: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(width: 2, color: Colors.grey),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            state = !state;
                                          });
                                        },
                                        icon: Icon(
                                          state
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        "Forget Password?",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                FlatButton(
                                  onPressed: (){},
                                  child: Text("Login",style:TextStyle(fontSize: 24)),
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
          SizedBox(height: 10,),
          Text("OR",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/facebook.png",width: 50,height: 50,),
              SizedBox(width: 15,),
              Image.asset("assets/images/google.png",width: 50,height: 50,),
              SizedBox(width: 15,),
              Image.asset("assets/images/instagram.png",width: 50,height: 50,),
              SizedBox(width: 15,),
              
            ],
          ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dont have an account? ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 18),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_){
                              return Screen1();
                            }
                    ));
                  },
                  child: Text("Signup",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 18),),
                ),

              ],
            ),
          ],
        ),
      ),

    ),
    );
  }
}
