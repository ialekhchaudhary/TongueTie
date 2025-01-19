import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  static var routename;

  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          _buildListTile('Change Password', Icons.lock_outline, onTap: () {
            // Handle change password
          }),
          _buildListTile('Account Deletion', Icons.delete_outline, onTap: () {
            // Handle account deletion
          }),
          _buildListTile('App Version', Icons.info_outline, onTap: () {
            // Show app version
          }),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, {VoidCallback? onTap}) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
