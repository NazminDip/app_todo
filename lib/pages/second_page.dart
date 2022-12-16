import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final formkey2 = GlobalKey<FormState>();
  var isVisible = true;
  @override
  void initState() {
    super.initState();
    passController = TextEditingController();
    mailController = TextEditingController();
    nameController = TextEditingController();
  }

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
              child: Form(
            key: formkey2,
            child: Column(
              children: [
                const SizedBox(height: 15),
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/pro.png'),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    validator: ((value) {
                      return name(value);
                    }),
                    decoration: const InputDecoration(
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

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: mailController,
                    validator: ((value) {
                      return mailValidation(value);
                    }),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 236, 231, 231),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
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
                  child: TextFormField(
                      controller: passController,
                      validator: ((value) {
                        return passValidation(value);
                      }),
                      obscureText: isVisible ? true : false,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
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
                        regisButton();
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
            ),
          )),
        ),
      ),
    );
  }

/////////////////////// Bug
  ///
  ///
  name(var value) {
    if (value.isEmpty) {
      return 'Enter Your Full Name';
    }
    return null;
  }

  mailValidation(var value) {
    if (value.isEmpty) {
      return 'Enter Valid Gmail';
    } else if (!value.contains('@gmail.com')) {
      return 'Enter Valid Gmail';
    }
    return null;
  }

  passValidation(value) {
    if (value.isEmpty) {
      return 'Enter Your Passwordat least 8 Character ';
    } else if (value.lenth <= 7) {
      return 'Enter Valid Password';
    }
    return null;
  }

  regisButton() {
    final isValid = formkey2.currentState!.validate();
    if (!isValid) {
      formkey2.currentState!.save();
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Gmail or Password Is Incorrect Format",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.pink,
      ));
    } else if (isValid) {
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Register Is Success. Login Now",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.pink,
      ));
    }
  }
}
