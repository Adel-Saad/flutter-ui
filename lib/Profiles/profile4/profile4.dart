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
            body: Stack(
              children: [
                _mainContent(context),
              ],
            ),
          ),
          _profileImage(context),
        ],
      ),
    );
  }

// WIDGETS =====================================================================

  Widget _mainContent(context) {
    return Positioned(
      bottom: 0,
      left: 10,
      right: 10,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            _namePhotographyText(context),
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
    return Positioned(
        left: 16,
        bottom: MediaQuery.of(context).size.height * 0.29,
        right: 16,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 08, right: 24, top: 08),
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
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () => null,
              child: Text('Follow'),
            ),
          ],
        ));
  }

  Widget _namePhotographyText(context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 92,
          ),
          Text(
            profile.user.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 04),
            child: Text('Photography',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                )),
          ),
          Text(
            'Published Wedding beauty , fasion, portrait\nPhotographer and retoucher',
            style: TextStyle(letterSpacing: 1.01),
          ),
        ],
      ),
    );
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
