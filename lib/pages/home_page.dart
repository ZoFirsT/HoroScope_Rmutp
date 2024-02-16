// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rmutp_app/pages/HoroscopePage/dialy_holoscope.dart';
import 'package:rmutp_app/pages/HoroscopePage/lover_holoscope.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(98, 236, 218, 85),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut(); // ทำการออกจากระบบ
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              children: [
                _buildProfileIcon(),
                SizedBox(height: 10),
                _buildWelcomeText(user),
                SizedBox(height: 20),
                _buildButtonRow(
                  context,
                  Icons.star,
                  'ดูดวงรายวัน',
                  Icons.favorite,
                  'ดูดวงความรัก',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DialyHoloscope()),
                    );
                  },
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoverHoloscope()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileIcon() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.account_circle,
            size: 121,
            color: Color.fromARGB(255, 251, 251, 251),
          ),
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color.fromARGB(255, 236, 218, 85),
                width: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeText(User? user) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back,',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 236, 218, 85),
            ),
          ),
          if (user != null)
            Text(
              user.email!,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildButtonRow(
    BuildContext context,
    IconData icon1,
    String text1,
    IconData icon2,
    String text2,
    VoidCallback onTap1,
    VoidCallback onTap2,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonWithIcon(
          onTap1,
          icon1,
          text1,
        ),
        _buildButtonWithIcon(
          onTap2,
          icon2,
          text2,
        ),
      ],
    );
  }

  Widget _buildButtonWithIcon(
      VoidCallback onPress, IconData icon, String text) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 73, 73, 73),
        ),
        padding: EdgeInsets.all(13),
        child: Column(
          children: [
            Icon(
              icon,
              color: Color.fromARGB(255, 236, 218, 85),
            ),
            SizedBox(height: 10), // Add space between icon and text
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 218, 85),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
