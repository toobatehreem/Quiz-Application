import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String assetPath;
  final double height;

  ImageBanner({@required this.assetPath, this.height = 150.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: height),
        child: Image.asset(
          assetPath,
          fit: BoxFit.fill,
        ),
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.purpleAccent[400],
          width: 5,
        )));
  }
}
