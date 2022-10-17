import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simple/utils/homepageimage.dart';
import 'package:simple/views/albumpage.dart';
import 'package:simple/views/userpage.dart';

import '../service/api.dart';
import '../utils/homesub.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 15),
            child: Text(
              'Good Morning john Due!',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'AffixMe Admin Portal',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          HomeImage(),
          SizedBox(
            height: 20,
          ),
          HomeSub(
              name: 'App', image: 'assets/app users.PNG', route: UserPage()),
          SizedBox(
            height: 10.0,
          ),
          HomeSub(
              name: 'Albums', image: 'assets/gallery.PNG', route: AlbumPage()),
        ],
      ),
    );
  }
}
