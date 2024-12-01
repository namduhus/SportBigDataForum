import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF87CEFA), // 밝은 하늘색
              Color(0xFFFFFFFF), // 흰색
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/background.png'), // 배경 이미지
            fit: BoxFit.cover,
            opacity: 0.2, // 이미지 투명도
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '로그인',
                  style: TextStyle(
                    fontFamily: 'Pretendard', // Pretendard 폰트 적용
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4682B4),
                  ),
                ),
                SizedBox(height: 40),
                // ID 입력 필드
                _buildTextField('ID'),
                SizedBox(height: 20),
                // Phone Number 입력 필드
                _buildTextField('전화번호', keyboardType: TextInputType.phone),
                SizedBox(height: 30),
                // 로그인 버튼
                GestureDetector(
                  onTap: () {
                    print("로그인 버튼 클릭됨");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4682B4), // 파란색 배경
                      borderRadius: BorderRadius.circular(20), // 둥근 모서리
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // 아래쪽 그림자
                          offset: Offset(4, 4),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5), // 윗쪽 하이라이트
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    child: Text(
                      '로그인',
                      style: TextStyle(
                        fontFamily: 'Pretendard', // Pretendard 폰트 적용
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 입력 필드 위젯
  Widget _buildTextField(String hintText, {TextInputType keyboardType = TextInputType.text}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // 아래쪽 그림자
            offset: Offset(2, 2),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.8), // 윗쪽 하이라이트
            offset: Offset(-2, -2),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontFamily: 'Pretendard', // Pretendard 폰트 적용
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
