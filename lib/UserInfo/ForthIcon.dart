import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForthIcon extends StatefulWidget {
  @override
  State<ForthIcon> createState() => _ForthIconState();
}

class _ForthIconState extends State<ForthIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.06, horizontal: MediaQuery.of(context).size.width * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/user_profile_picture.jpg'),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02),
            ListTile(horizontalTitleGap: 10 ,
              leading: Icon(Icons.person,size: 40),
              title: Text(
                'Michael Zakaria',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Icon(Icons.cake ,size: 40),
              title: Text(
                '22',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              horizontalTitleGap: 10,
              leading: Icon(Icons.email, size: 40),
              title: Text(
                'michael_z10242@cic-cairo.com',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement logout functionality here
                },
                child: Text('Logout', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

