// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class ResponsiveButton extends StatefulWidget {
//   bool? isResponsive;
//   double? width;
//   ResponsiveButton({ Key? key, this.width, this.isResponsive=false}) : super(key: key);

//   @override
//   _ResponsiveButtonState createState() => _ResponsiveButtonState();
// }

// class _ResponsiveButtonState extends State<ResponsiveButton> {
//   get width => null;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.blue,
//       ),
//       child: Row(
//         children: [
//           Image.asset("img/button-one.png"),
//         ],
//       ),
//     );
//   }
// }