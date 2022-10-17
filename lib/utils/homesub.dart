import 'package:flutter/material.dart';
import 'package:simple/views/userpage.dart';

class HomeSub extends StatefulWidget {
  final String name;
  final String image;
  final Widget route;

  HomeSub(
      {Key? key, required this.name, required this.image, required this.route})
      : super(key: key);

  @override
  State<HomeSub> createState() => _HomeSubState();
}

class _HomeSubState extends State<HomeSub> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget.route));
        },
        child: Container(
          height: 100,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Image.asset(widget.image),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
