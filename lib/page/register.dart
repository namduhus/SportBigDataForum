import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isAgreed = false; // 개인정보 동의 체크박스 상태

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
            fit: BoxFit.cover, // 이미지 크기 맞춤
            opacity: 0.2, // 이미지 투명도
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4682B4),
                    ),
                  ),
                  SizedBox(height: 30),
                  // 이름 입력 필드
                  _buildTextField('이름'),
                  SizedBox(height: 20),
                  // ID 입력 필드
                  _buildTextField('ID'),
                  SizedBox(height: 20),
                  // Phone Number 입력 필드
                  _buildTextField('전화번호', keyboardType: TextInputType.phone),
                  SizedBox(height: 20),
                  // 나이 입력 필드
                  _buildTextField('나이', keyboardType: TextInputType.number),
                  SizedBox(height: 20),
                  // 주소 입력 필드
                  _buildTextField('주소'),
                  SizedBox(height: 20),
                  // 개인정보 동의 체크박스
                  Row(
                    children: [
                      Checkbox(
                        value: isAgreed,
                        onChanged: (value) {
                          setState(() {
                            isAgreed = value!;
                          });
                        },
                      ),
                      Flexible(
                        child: Text(
                          '회원가입을 위해 개인정보 수집에 동의합니다.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  // 회원가입 버튼
                  GestureDetector(
                    onTap: isAgreed
                        ? () {
                      print("회원가입 완료");
                    }
                        : null,
                    child: Container(
                      decoration: BoxDecoration(
                        color: isAgreed
                            ? Color(0xFF4682B4)
                            : Colors.grey, // 비활성화 상태는 회색
                        borderRadius: BorderRadius.circular(20), // 둥근 모서리
                        boxShadow: [
                          if (isAgreed) ...[
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
                          ]
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: Text(
                        '회원가입',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white, // 텍스트는 항상 흰색
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 입력 필드 위젯
  Widget _buildTextField(String hintText, {TextInputType keyboardType = TextInputType.text}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
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
        ),
      ),
    );
  }
}
