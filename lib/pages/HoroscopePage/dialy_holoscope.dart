// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors
import 'package:flutter/material.dart';

class DialyHoloscope extends StatefulWidget {
  const DialyHoloscope({Key? key}) : super(key: key);

  @override
  State<DialyHoloscope> createState() => _DialyHoloscopeState();
}

class _DialyHoloscopeState extends State<DialyHoloscope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialy Horoscope'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ย้อนกลับไปยังหน้าก่อนหน้านี้
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Dialy Horoscope Content'),
        ),
      ),
    );
  }
}
