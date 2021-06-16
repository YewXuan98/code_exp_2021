import 'package:code_exp_2021/main.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = "/profile-page";
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        color: kPrimaryColor,
        child: Container(
          color: Colors.pink,
          height: 20,
                  child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Container(
                  color: Colors.white,
                  width: 80,
                  height: 80,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset('assets/images/profile_image.jpg')),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sherwin Seah',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    'sherwin@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
