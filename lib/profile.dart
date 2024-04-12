import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle titleStyle =
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    final TextStyle subTittleStyle = TextStyle(fontSize: 20);
    const double iconSize = 35.0; // Define your icon size here

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/avatar2.png'),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text('Name', style: titleStyle),
            subtitle: Text('Trần Thanh Bình', style: subTittleStyle),
            leading: Icon(Icons.person, size: iconSize),
          ),
          ListTile(
            title: Text('Email', style: titleStyle),
            subtitle: Text('binh22092002@iCloud.com', style: subTittleStyle),
            leading: Icon(Icons.email, size: iconSize),
          ),
          ListTile(
            title: Text('Phone', style: titleStyle),
            subtitle: Text('0903346306', style: subTittleStyle),
            leading: Icon(Icons.phone, size: iconSize),
          ),
          ListTile(
            title: Text('Date of Birth', style: titleStyle),
            subtitle: Text('22/09/2002', style: subTittleStyle),
            leading: Icon(Icons.cake, size: iconSize),
          ),
          ListTile(
            title: Text('Address', style: titleStyle),
            subtitle: Text('62 Phú Thọ, Phường 2, Quận 11, TP.HCM',
                style: subTittleStyle),
            leading: Icon(Icons.home, size: iconSize),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Update profile information
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 48),
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primary, // This is the color of the text
              ),
              child: Text(
                'CẬP NHẬT',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
