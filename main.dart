import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(scaff());
}

class scaff extends StatelessWidget {
  scaff({super.key});
  final control = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (light, dark) {
      return MaterialApp(
          theme: ThemeData(
            colorScheme: light,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: dark,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Container(
                margin: const EdgeInsets.only(top: 60, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                         child: //Image.asset("assets/images/user.png")
                      Container(
                       margin: const EdgeInsets.all(6),
                        // alignment: Alignment.center,
                        width: 150,
                         height: 150,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(90),
                             border: Border.all(color: Colors.black),
                            color: Colors.white,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/user.png"))),
                       )
                         ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 60,
                      width: 350,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(left: 15),

                          // ignore: prefer_const_constructors
                          child: TextField(
                            controller: control,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 60,
                      width: 350,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: TextField(
                            controller: password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    OutlinedButton(
                        onPressed: () {
                          control.clear();
                          password.clear();
                          FocusManager.instance.primaryFocus?.unfocus();
                    
                          Fluttertoast.showToast(
                            msg: "Login Successful",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                          );
                        },
                        child: const Text("Log in")),
                  ],
                )),
          ));
    });
  }
}
