import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Column customSkeletonLoading({required double width, required double height}) {
  return Column(
    children: [
      Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[300],
          ),
        ),
      ),
      // SizedBox(height: size.height * 0.01),
    ],
  );
}
