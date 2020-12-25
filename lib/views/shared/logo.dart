import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget drawLogo(){
  return Container(
    height: 300.h,
    width: 200.w,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/imgs/logo.png'))),
  );
}