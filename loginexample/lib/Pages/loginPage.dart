import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  static const String idScreen = "login";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 65.0,
              ),
              Image(
                image: AssetImage("assets/images/login.jpg"),
                width: 390.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 10.0)),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),

                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          )),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      child: Container(
                          height: 50.0,
                          width: 200.0,
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          )),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(24.0)),
                      onPressed: () {
                        print("Giriş Yap Butonu Tıklandı!");
                        if (!emailTextEditingController.text.contains("@")) {
                          //displayToastMsg(
                          //"Geçerli bir email adresi girin.", context);
                        } else if (passwordTextEditingController.text.isEmpty) {
                          //displayToastMsg("Şifre zorunludur.", context);
                        } else {
                          //loginAndAuthenticateUser(context);
                        }
                      },
                    )
                  ],
                ),
              ),

              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  //Navigator.pushNamedAndRemoveUntil(
                  //context, RegisterScreen.idScreen, (route) => false);
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 18.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
