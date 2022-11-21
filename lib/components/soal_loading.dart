import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Column soalLoading(Size size) {
  return Column(
    children: [
      Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: size.width * 0.8,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[300],
          ),
        ),
      ),
      SizedBox(height: size.height * 0.01),
    ],
  );
}
