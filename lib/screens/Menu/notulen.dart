import 'package:flutter/material.dart';

class Notulen extends StatefulWidget {
  const Notulen({Key? key}) : super(key: key);

  @override
  State<Notulen> createState() => _NotulenState();
}

class _NotulenState extends State<Notulen> {
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
          "Notulen",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}