import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

bool isSelected = false;

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(
          () {
            isSelected = !isSelected;
          },
        );
      },
      icon: Icon(isSelected ? Icons.favorite : Icons.favorite_outline, size: 20),
      color: isSelected ? Colors.red : Colors.white,
    );
  }
}
