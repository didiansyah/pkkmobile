import 'package:flutter/material.dart';

class Desa extends StatefulWidget {
  const Desa({Key? key}) : super(key: key);

  @override
  State<Desa> createState() => _DesaState();
}

class _DesaState extends State<Desa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "e-Desa Wisma",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}