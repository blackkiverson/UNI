import 'package:flutter/material.dart';

class SideProfile extends StatefulWidget {
  const SideProfile({ Key? key }) : super(key: key);

  @override
  State<SideProfile> createState() => _SideProfileState();
}

class _SideProfileState extends State<SideProfile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
      )    
    );
  }
}