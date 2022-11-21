import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Material loading() {
  return Material(
    type: MaterialType.transparency,
    child: WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: LoadingAnimationWidget.twistingDots(
                leftDotColor: Colors.green,
                rightDotColor: Colors.purple,
                size: 45),
          ),
        ),
      ),
    ),
  );
}
