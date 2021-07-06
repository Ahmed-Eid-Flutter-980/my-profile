import 'package:flutter/material.dart';
import 'package:flutter_app_section_2/pages/profileHome.dart';

void main() {
  runApp(Profile());
}
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileHome(),
    );
  }
}