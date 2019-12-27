import 'package:flutter/material.dart';

const String kWelcomeTitleText = 'Tiny Chat';
const String kLogInText = '登 入';
const String kRegisterText = '註 冊';
const String kHeroLogoTag = 'logo';
const String kEmailText = '信箱';
const String kPasswordText = '密碼';
const String kSendText = '送出';
const String kEnterYourEmailText = '請輸入您的信箱';
const String kEnterYourPasswordText = '請輸入您的密碼';

const String kLogoImageText = 'images/logo_2.png';
const String kEmailImageText = 'images/email_icon.png';
const String kPasswordImageText = 'images/pwd_icon.png';

const Color kMainColor = Color(0xFF45C979);
const Color kMainSubColor = Color(0xFF708090);
const Color kChatMainColor = Color(0xFF2A3244);
const Color kChatSelfTalkColor = Color(0xFFBEF18C);
const Color kChatTalkColor = Color(0xFFE4E8EB);

const kSendButtonTextStyle = TextStyle(
  color: kMainColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: '請輸入您的訊息...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: kMainColor, width: 2.0),
  ),
);

//const kTextFieldDecoration = InputDecoration(
//  hintText: 'Enter a value',
//  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//
//  border: OutlineInputBorder(
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//  enabledBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: kLogInButtonColor, width: 1.0),
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//  focusedBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: kLogInButtonColor, width: 2.0),
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
);
