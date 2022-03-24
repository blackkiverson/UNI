import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  final double size;
  final String text;
  final Color color;

  const AppText(
      {Key? key, this.size = 20, required this.text, this.color = Colors.white})
      : super(key: key);

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        style: TextStyle(
            color: widget.color,
            fontSize: widget.size,
            fontWeight: FontWeight.normal));
  }
}
