import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space {
  static SizedBox h(num height) {
    return SizedBox(
      height: height.h,
    );
  }

  static SizedBox w(num width) {
    return SizedBox(
      width: width.w,
    );
  }

  static SizedBox hw({required num height, required num width}) {
    return SizedBox(
      height: height.h,
      width: width.w,
    );
  }
}
