import 'package:flutter/material.dart';

import '../components/styles.dart';
import '/pages/edit_profile.dart';
import '/pages/invite_friend.dart';
import '/pages/language.dart';
import '/pages/my_trip.dart';
import '/pages/notification.dart';
import '/widget/navbar.dart';
import '/widget/text_btn.dart';

class MyProfile extends StatefulWidget {
  static const String id = 'MyProfile';

  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          actions: [
            MyTextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                },
                text: 'Edit',
                colors: appColor)
          ],
          title: const Text('My Account',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Column(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/p2.jpg'),
          radius: 40,
        ),
        const SizedBox(height: 8),
        blackHeading('John Snow'),
        greyText('admin@flutterninja.com'),
        const SizedBox(height: 16),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationScreen()));
          },
          leading: const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 16,
              child: Icon(Icons.notifications, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Notification'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyTrip()));
          },
          leading: const CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 16,
              child: Icon(Icons.airplanemode_on_outlined, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Tours'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 16,
              child: Icon(Icons.location_on, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Location'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Language()));
          },
          leading: const CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 16,
              child: Icon(Icons.language, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Language'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InviteFriend()));
          },
          leading: const CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 16,
              child: Icon(Icons.group, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Invite Friends'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 16,
              child: Icon(Icons.help, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Help Center'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 16,
              child: Icon(Icons.settings, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Settings'),
          trailing: const Icon(Icons.chevron_right),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(
              backgroundColor: Colors.cyan,
              radius: 16,
              child: Icon(Icons.logout, color: Colors.white)),
          minLeadingWidth: 0,
          title: boldText('Log Out'),
          trailing: const Icon(Icons.chevron_right),
        ),
      ],
    ));
  }
}
