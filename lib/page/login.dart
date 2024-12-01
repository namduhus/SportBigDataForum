import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2), // 상단 여백
              Text(
                '로그인',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4682B4),
                ),
              ),
              SizedBox(height: 20),
              // ID 입력 필드
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'ID',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Phone Number 입력 필드
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: InputBorder.none,
                  ),
                ),
              ),
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
                    style: TextStyle(fontSize: 18, color: Colors.white), // 흰색 텍스트
                  ),
                ),
              ),
              Spacer(flex: 3), // 하단 여백
            ],
          ),
        ),
      ),
    );
  }
}
