// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class LoverHoloscope extends StatefulWidget {
  const LoverHoloscope({Key? key}) : super(key: key);

  @override
  State<LoverHoloscope> createState() => _LoverHoloscopeState();
}

class _LoverHoloscopeState extends State<LoverHoloscope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lover Horoscope'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ย้อนกลับไปยังหน้าก่อนหน้านี้
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Lover Horoscope Content'),
        ),
      ),
    );
  }
}
