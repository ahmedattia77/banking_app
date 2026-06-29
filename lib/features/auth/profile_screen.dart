import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161822), 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white),
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: const [Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.person_outline, color: Colors.white))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(radius: 40, backgroundColor: Colors.grey), 
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tanya Myroniuk", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    Text("Senior Designer", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children:  [
                  _buildListTile(Icons.person_outline, "Personal Information"),
                  _buildListTile(Icons.credit_card, "Payment Preferences"),
                  _buildListTile(Icons.account_balance_wallet_outlined, "Banks and Cards"),
                  _buildListTile(Icons.notifications_none, "Notifications", trailingText: "2"),
                  _buildListTile(Icons.message, "Message Center"),
                  _buildListTile(Icons.location_on_outlined, "Address"),
                  _buildListTile(Icons.settings, "Settings"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildListTile(IconData icon, String title, {String? trailingText}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
      trailing: trailingText != null 
          ? CircleAvatar(radius: 10, backgroundColor: Colors.red, child: Text(trailingText, style: const TextStyle(fontSize: 12, color: Colors.white)))
          : const Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
    );
  }
}