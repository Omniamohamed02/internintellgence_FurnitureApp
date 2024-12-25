import 'package:flutter/material.dart';
import 'package:internintellgence_furnitureapp/feature/auth/login_screen.dart';
import 'package:internintellgence_furnitureapp/feature/profile/widget/custom_list_tile.dart';
import 'package:internintellgence_furnitureapp/feature/profile/widget/user_info.dart';

class   ProfileScreen extends StatelessWidget {
 const   ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          UserInfo(),
          CustomListTile(Title: 'My Profile', Leading: Icon(Icons.person_outline), Trailing: Icon(Icons.arrow_forward_ios)),
          CustomListTile(Title: "Notification", Leading: Icon(Icons.notifications_none_outlined), Trailing: Icon(Icons.arrow_forward_ios)),
          CustomListTile(Title: 'History', Leading: Icon(Icons.history), Trailing: Icon(Icons.arrow_forward_ios)),
          CustomListTile(Title: "Setting", Leading:  Icon(Icons.settings), Trailing: Icon(Icons.arrow_forward_ios)),
          GestureDetector(
      onTap: () {
        _showLogoutDialog(context);
      },
      child: CustomListTile(
        Title: 'Logout',
        Leading: Icon(Icons.logout),
        Trailing: Icon(Icons.arrow_forward_ios),
      ),
        )]));
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirm Logout"),
          content: Text("Are you sure you want to logout?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel",style: TextStyle(color: Colors.black),),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text("Logout",style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }
}