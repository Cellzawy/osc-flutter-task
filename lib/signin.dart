import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  void onPressed() {}
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                  onPressed: onPressed, icon: const Icon(Icons.arrow_back)),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Color.fromRGBO(194, 46, 34, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 23,
              ),
              Align(
                  child: SizedBox(
                      width: screenWidth / 1.2,
                      child: const TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        hintText: 'E-mail Address',
                      )))),
              SizedBox(
                height: screenHeight / 27,
              ),
              Align(
                  child: SizedBox(
                      width: screenWidth / 1.2,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          hintText: 'Password',
                        ),
                        obscureText: true,
                      ))),
              SizedBox(
                height: screenHeight / 27,
              ),
              Align(
                  child: SizedBox(
                      width: screenWidth / 1.4,
                      child: TextButton(
                          onPressed: onPressed,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(194, 46, 34, 1)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Log In",
                              style: TextStyle(fontSize: 20),
                            ),
                          )))),
              SizedBox(
                height: screenHeight / 40,
              ),
              const Align(child: Text("OR")),
              SizedBox(
                height: screenHeight / 40,
              ),
              Align(
                  child: SizedBox(
                      width: screenWidth / 1.4,
                      child: TextButton(
                          onPressed: onPressed,
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(66, 88, 146, 1)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Facebook Login",
                              style: TextStyle(fontSize: 20),
                            ),
                          )))),
            ]),
          ),
        ],
      ),
    );
  }
}
