import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:extended_image/extended_image.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget buildEmail() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: const Offset(0, 2))
                ]),
            height: 60,
            width: 350,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    top: 14,
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black54)),
            ),
          )
        ]);
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: const Offset(0, 2))
              ]),
          height: 60,
          width: 350,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14,
                ),
                prefixIcon: Icon(
                  Icons.lock_clock_outlined,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black54)),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        child: Text(
          'Forgot Password ?',
          style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              decoration: TextDecoration.underline),
        ),
        onPressed: () async {
          const String _url = "https://www.geeksforgeeks.org/";
          if (await canLaunch(_url)) {
            launch(_url);
          } else {
            throw "could not Launch $_url";
          }
        },
      ),
    );
    //  child: FlatButton(
    //  OnPressed: () => print("Forgot Password Pressed"),
    //  Padding: EdgeInsets.only(right: 0),
    //  child: Text(
    //   'Forgot password ?',
    //   style: TextStyle(
    //     color: Colors.white,
    //     fontWeight: FontWeight.bold,
    //   ),

    //  )

    //  ) ,
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.orangeAccent),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = true;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(context, );
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo.shade700,
            side: BorderSide(width: 0.5),
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.all(20)),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              //   image: DecorationImage(
              //     fit: BoxFit.cover,
              //     image: NetworkImage(
              //       'https://www.kindacode.com/wp-content/uploads/2021/01/blue.jpg',
              //     ),
              //   ),
              // ),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple,
                    Colors.purpleAccent,
                    Colors.blue.shade400,
                    Colors.blueAccent,
                  ]),
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 175,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  buildEmail(),
                  SizedBox(height: 25),
                  buildPassword(),
                  SizedBox(
                    height: 5,
                  ),
                  buildForgotPassBtn(),
                  buildRememberCb(),
                  buildLoginBtn(),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 1.0,
                          color: Colors.grey,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: Text(
                            'or Continue With',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 1.0,
                          color: Colors.grey,
                        ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      //  SquareTile(imagePath: 'assets/images/googleicon.png'),
                      // const SizedBox(
                      //   width: 20,
                      // ),
                      CircleAvatar(
                        backgroundColor: Colors.black54,
                        radius: 36,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/googleicon.png'),
                          radius: 32,
                        ), //padding:EdgeInsets.Border.symmetric(
                        //   //  horizontal:70, vertical:90,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 75),
                      ),
                      //Google button
                      // Image(
                      //   image: ResizeImage(
                      //     AssetImage('assets/images/googleicon.jpg'),
                      //     width: 100,
                      //     height: 150,
                      //   ),
                      //   alignment: Alignment.bottomCenter,
                      //   fit: BoxFit.cover,
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'New User !',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      
                      Text(
                        'Register here',
                        
                        style: TextStyle(
                            color: Colors.yellowAccent,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.yellow,
                            decorationThickness: 3),
                      ),
                    ],
                  )
                  // Padding(padding: EdgeInsets.symmetric(vertical: 1))
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}