import 'package:flutter/material.dart';

class LoverHoroscope extends StatefulWidget {
  const LoverHoroscope({Key? key}) : super(key: key);

  @override
  State<LoverHoroscope> createState() => _LoverHoroscopeState();
}

class _LoverHoroscopeState extends State<LoverHoroscope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ดูดวงความรัก'),
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
              _buildDailyPrediction(),
              const SizedBox(height: 20),
              _buildDetailSection(
                  title: 'สถานะความสัมพันธ์',
                  prediction: _generateRelationshipStatus()),
              const SizedBox(height: 16),
              _buildDetailSection(
                  title: 'อุปสรรค', prediction: _generateObstacle()),
              const SizedBox(height: 16),
              _buildDetailSection(
                  title: 'คำแนะนำ', prediction: _generateAdvice()),
              const SizedBox(height: 20),
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
          image: AssetImage('assets/couple.webp'), // Replace with your image
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
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'คำทำนายความรักสำหรับราศีพฤษภ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDailyPrediction() {
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
              'วันนี้คุณมีเกณฑ์จะได้พบเจอเรื่องราวดี ๆ เกี่ยวกับความรัก คนโสดมีโอกาสพบเจอคนถูกใจ คนที่มีคู่ครอง ความสัมพันธ์จะราบรื่น มีโอกาสได้วางแผนอนาคตร่วมกัน...',
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

  // Helper Functions for Predictions
  String _generateRelationshipStatus() {
    List<String> statuses = [
      'คนโสดมีโอกาสได้พบเจอคนใหม่ ๆ เข้ามาในชีวิต',
      'คุณกำลังอยู่ในช่วงเริ่มต้นความสัมพันธ์ใหม่',
      'ความสัมพันธ์ของคุณมีความมั่นคง พัฒนาไปในทิศทางที่ดี',
      'คุณและคนรักกำลังวางแผนอนาคตร่วมกันอย่างจริงจัง'
    ];
    return statuses.elementAt(
        (DateTime.now().millisecondsSinceEpoch % statuses.length)); // Pick one
  }

  String _generateObstacle() {
    List<String> obstacles = [
      'ระวังการสื่อสารที่ผิดพลาด อาจทำให้เกิดความเข้าใจผิด',
      'มีโอกาสเกิดความห่างเหินเนื่องจากความยุ่งของทั้งสองฝ่าย',
      'ควรระวังเรื่องอารมณ์ร้อนของตัวคุณหรือคนรัก',
      'อาจมีมือที่สามเข้ามาทำให้เกิดความระแวง'
    ];
    return obstacles
        .elementAt((DateTime.now().millisecondsSinceEpoch % obstacles.length));
  }

  String _generateAdvice() {
    List<String> advice = [
      'ใช้เวลาร่วมกัน เพื่อสร้างความเข้าใจให้มากขึ้น',
      'การพูดคุยกันอย่างเปิดใจเป็นสิ่งสำคัญ',
      'ควรควบคุมอารมณ์ให้ดี ไม่ใช้อารมณ์ในการตัดสินใจ',
      'มอบความไว้ใจให้แก่กัน สร้างความมั่นคงในความสัมพันธ์'
    ];
    return advice
        .elementAt((DateTime.now().millisecondsSinceEpoch % advice.length));
  }
}
