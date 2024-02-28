// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DailyHoroscope extends StatefulWidget {
  const DailyHoroscope({Key? key}) : super(key: key);

  @override
  State<DailyHoroscope> createState() => _DailyHoroscopeState();
}

class _DailyHoroscopeState extends State<DailyHoroscope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ดูดวงรายวัน'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildDetailedPrediction(),
              const SizedBox(height: 20),
              _buildDetailSection(
                  title: 'การงาน',
                  prediction:
                      'งานของคุณจะราบรื่น ไม่มีปัญหาอะไรให้กังวล เหมาะสำหรับการทบทวนงานเก่าและวางแผนงานใหม่มีโอกาสได้รับมอบหมายงานใหม่ ท้าทายความสามารถหัวหน้าและเพื่อนร่วมงานให้การสนับสนุนควรระวังเรื่องการสื่อสาร อาจมี miscommunication เกิดขึ้น'),
              const SizedBox(height: 16),
              _buildDetailSection(
                  title: 'การเงิน',
                  prediction:
                      'การเงินของคุณอยู่ในเกณฑ์ดี มีโชคลาภจากการออม มีโอกาสได้เงินก้อนจากงานเสริม ควรวางแผนการใช้จ่ายอย่างรอบคอบ ระวังเรื่องการถูกโกง'),
              const SizedBox(height: 16),
              _buildDetailSection(
                  title: 'ความรัก',
                  prediction:
                      'คนโสดมีโอกาสพบเจอคนถูกใจ ควรระวังเรื่องอารมณ์ ควบคุมอารมณ์ให้ดี คนที่มีคู่ครอง ความสัมพันธ์จะราบรื่น หาเวลาไปเที่ยวหรือทำกิจกรรมร่วมกัน'),
              const SizedBox(height: 16),
              _buildDetailSection(
                  title: 'สุขภาพ',
                  prediction:
                      'สุขภาพของคุณแข็งแรงดี แต่อย่าละเลยการพักผ่อน ควรออกกำลังกายอย่างสม่ำเสมอ ทานอาหารให้ครบ 5 หมู่ ระวังเรื่องอุบัติเหตุ'),
              const SizedBox(height: 16),
              _buildDetailSection(
                  title: 'โชคลาภ',
                  prediction:
                      'เลขนำโชค: 2, 5, 8  สีนำโชค: เขียว ฟ้า ขาว วันนำโชค: วันพุธ'),
              const SizedBox(height: 20),
              _buildAdviceSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/taurus.jpg'), // Replace with your image
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ราศีพฤษภ (16 เมษายน - 15 พฤษภาคม)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'วันนี้เป็นวันที่ดีสำหรับการพักผ่อนและผ่อนคลาย พยายามหลีกเลี่ยงความเครียดและความวุ่นวาย มุ่งเน้นไปที่การดูแลตัวเองทั้งร่างกายและจิตใจ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailedPrediction() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'คำทำนายประจำวัน',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'วันนี้คุณมีเกณฑ์จะได้พบเจอเรื่องราวดี ๆ ที่ทำให้มีความสุข งานจะมีความราบรื่น คนที่รอการติดต่อกลับจะได้รับข่าวดี การเงินมีโอกาสได้ลาภลอยเล็ก ๆ น้อย ๆ เข้ามา...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailSection(
      {required String title, required String prediction}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              prediction,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdviceSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'คำแนะนำ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'ใช้เวลากับครอบครัวและเพื่อนฝูง ทำกิจกรรมที่ชื่นชอบ เช่น อ่านหนังสือ ฟังเพลง หรือปลูกต้นไม้',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
