import 'package:flutter/material.dart';

import 'first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Register Page',
            style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 30),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const SizedBox(height: 15),
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/pro.png'),
              ),

              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 236, 231, 231),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: 'Enter your  Name',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.red),
                    label: Text('Full Name:'),
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                    suffix: Icon(Icons.person, color: Colors.pink),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 236, 231, 231),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    hintText: 'Enter your Gamail',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.red),
                    label: Text('Gmail:'),
                    labelStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                    suffix: Icon(Icons.mail, color: Colors.pink),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                    obscureText: isVisible ? true : false,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      hintText: 'Enter your Password',
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.red),
                      label: const Text('Password:'),
                      labelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 236, 231, 231),
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: isVisible
                            ? const Icon(Icons.visibility_off,
                                color: Colors.pink)
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.pink,
                              ),
                      ),
                    )),
              ),
              ///////////////////////////////////////////// Button

              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        minimumSize: const Size(double.infinity, 50),
                        side: const BorderSide(color: Colors.pink, width: 3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                            "Register is Success, Login Now",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          backgroundColor: Color.fromARGB(255, 240, 128, 165)));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstPage()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              ////////////////////////////////////////////////////////////////////////
              const SizedBox(height: 25),
            ],
          )),
        ),
      ),
    );
  }
}
