import 'package:flutter/material.dart';

class Image_Button extends StatelessWidget {
  VoidCallback on_pressed;
  String image_path;

  Image_Button({
    Key? key,
    required this.on_pressed,
    required this.image_path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: Image.asset(
            image_path,
            height: 50.0,
          ),
        ),
      ),
    );
  }
}
