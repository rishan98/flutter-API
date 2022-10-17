import 'package:flutter/material.dart';

class HomeImage extends StatefulWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  State<HomeImage> createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/dashboard.PNG'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ]));
  }
}
