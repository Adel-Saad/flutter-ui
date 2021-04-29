import 'package:flutter/material.dart';
import 'package:flutter_profiles_ui/Profiles/profile4/provider4.dart';
import 'package:flutter_profiles_ui/Profiles/profile4/user4.dart';

class Profile4 extends StatefulWidget {
  @override
  _Profile4State createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {
  Profile profile = Profile4Provider.getProfile();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Stack(
        children: [
          _backGroundImage(context),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Icon(Icons.arrow_back),
              actions: [
                Icon(Icons.more_vert),
              ],
            ),
            body: _mainContent(context),
          ),
        ],
      ),
    );
  }

// WIDGETS =====================================================================

  Widget _mainContent(context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _profileImage(context),
            ..._namePhotographyText(context),
            Divider(),
            _counters(context),
          ],
        ),
      ),
    );
  }

  Widget _backGroundImage(context) {
    return Image.asset(
      'assets/images/profiles/profile3.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
    );
  }

  Widget _profileImage(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 08),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: ExactAssetImage('assets/images/profiles/bg4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(),
          RaisedButton(
            color: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            onPressed: () => null,
            child: Text('ADD FRIEND'),
          ),
          SizedBox(
            width: 08,
          ),
          RaisedButton(
            color: Colors.black54,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () => null,
            child: Text('Follow'),
          ),
        ],
      ),
    );
  }

  List<Widget> _namePhotographyText(context) {
    return [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          profile.user.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(profile.user.profession,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            )),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Text(
          profile.user.aboutMe,
          style: TextStyle(letterSpacing: 1.01),
        ),
      ),
    ];
  }

  Widget _counters(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'FOLLOWERS',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 08,
              ),
              Text(
                profile.followers.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text('FOLLOWING', style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 08,
              ),
              Text(
                profile.following.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text('FRIENDS', style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 08,
              ),
              Text(
                profile.friends.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
