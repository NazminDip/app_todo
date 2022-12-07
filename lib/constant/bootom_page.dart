import 'package:flutter/material.dart';


import '../pages/first_page.dart';
import '../pages/pro_page.dart';
import '../pages/success_page.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BottomNavigationBar(backgroundColor: Colors.transparent, items: [
        BottomNavigationBarItem(
            label: 'Home',
            icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProPage()));
              },
              child: const Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
            )),
        BottomNavigationBarItem(
            label: 'Pin',
            icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SuccessPage()));
              },
              child: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 40,
              ),
            )),
            
        BottomNavigationBarItem(
            label: 'Logout',
            icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FirstPage()));
              },
              child: const Icon(
                Icons.logout,
                color: Colors.white,
                size: 40,
              ),
            ))
      ]),
    );
  }
}
