import 'package:flutter/material.dart';

// LoginPage와 RegisterPage 임포트 필요
import 'login.dart';
import 'register.dart';

class StartPage extends StatelessWidget {
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
              Image.asset(
                'assets/logo.png',
                width: 300,
                height: 300, // 로고 크기
              ),
              SizedBox(height: 30),
              // 로그인 버튼
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF4682B4), // 버튼 배경색 (파란색)
                    borderRadius: BorderRadius.circular(20), // 둥근 모서리
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // 아래쪽 그림자
                        offset: Offset(4, 4), // 그림자의 위치 (x, y)
                        blurRadius: 10, // 그림자 흐림 정도
                        spreadRadius: 1, // 그림자 퍼짐 정도
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5), // 윗쪽 하이라이트
                        offset: Offset(-4, -4), // 반대 방향 그림자
                        blurRadius: 10,
                        spreadRadius: 1,
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
              SizedBox(height: 20),
              // 회원가입 버튼
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // 버튼 배경색 (흰색)
                    borderRadius: BorderRadius.circular(20), // 둥근 모서리
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // 아래쪽 그림자
                        offset: Offset(4, 4), // 그림자의 위치 (x, y)
                        blurRadius: 10, // 그림자 흐림 정도
                        spreadRadius: 1, // 그림자 퍼짐 정도
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8), // 윗쪽 하이라이트
                        offset: Offset(-4, -4), // 반대 방향 그림자
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 34.5, vertical: 15),
                  child: Text(
                    '회원가입',
                    style: TextStyle(fontSize: 18, color: Color(0xFF4682B4)), // 파란색 텍스트
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
