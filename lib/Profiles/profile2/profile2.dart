import 'package:flutter/material.dart';

import '../profile2/provider2.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
// props ...
  var profile = Profile2Provider.getProfile();
  var _textStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
// Main Build ...
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/profiles/net.jpg',
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Stack(
              children: [
                _profileImgNameAddress(context),
                _bodyContentWhiteHalf(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //-----------------------------------------------------------------------------
  Widget _profileImgNameAddress(context) {
    return Positioned(
      top: -2,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: ExactAssetImage('assets/shared/adel_saad.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Text(
            profile.user.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 04,
          ),
          Text(profile.user.address, style: _textStyle),
        ],
      ),
    );
  }

  Widget _bodyContentWhiteHalf(context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.35,
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(08.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _counters(context),
            Divider(
              height: 4,
              color: Colors.grey,
            ),
            ..._aboutMe(context),
            _friends(context),
            _contacts(context),
          ],
        ),
      ),
    );
  }

//------------------------------------------------------------------------------
  Widget _counters(context) {
    return Positioned(
      bottom: 16,
      left: 24,
      right: 24,
      child: Padding(
        padding: const EdgeInsets.all(08.0),
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('FOLLOWERS'),
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
                Text('FOLLOWING'),
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
                Text('FRIENDS'),
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
      ),
    );
  }

  List<Widget> _aboutMe(context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 04),
        child: Text('ABOUT ME'),
      ),
      SizedBox(
        height: 04,
      ),
      Text(
        profile.user.about,
        style: TextStyle(
          height: 1.2,
          fontSize: 16,
        ),
      ),
    ];
  }

  Widget _friends(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        'FRIENDS : ${profile.friends.toString()}',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _contacts(context) {
    return Flexible(
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(25, (index) {
            return Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage('assets/shared/adel_saad.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList()),
    );
  }
}
