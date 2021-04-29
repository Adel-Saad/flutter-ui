import 'package:flutter/material.dart';
import 'package:flutter_profiles_ui/Profiles/Profile3/profile3Provider.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
// props ....
  var profile = Profile3Provider.getProfile();

// Main Build ....
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/profiles/bg.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert_rounded),
                  onPressed: () {},
                )
              ],
            ),
            body: Stack(
              children: [
                _bodyContent(context),
                _profileImage(context),
                // _photos(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

// Methods =====================================================================

  Widget _bodyContent(context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.08,
      left: 12,
      right: 12,
      bottom: 0,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              15,
            ),
            topRight: Radius.circular(
              15,
            ),
          ),
        ),
        child: ListView(
          children: [
            _nameAddressBtn(context),
            Divider(color: Colors.grey),
            _counters(context),
            Divider(color: Colors.grey),
            _photosHeader(context),
            _photosListView(context),
            ..._aboutMe(context),
          ],
        ),
      ),
    );
  }

//.............................................
  Widget _nameAddressBtn(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          profile.user.name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.2),
        ),
        SizedBox(
          height: 04,
        ),
        Text(
          profile.user.address,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 16,
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.red,
          child: Text(
            'FOLLOW',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

// .............................................
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

//..............................................
  Widget _photosHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 08),
      child: Text('PHOTOS (${profile.photos.toString()})'),
    );
  }

// ...............................................
  Widget _photosListView(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 125,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(profile.photos, (index) {
            return Container(
              margin: EdgeInsets.all(08),
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(08),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage('assets/images/profiles/bg.jpg'),
                ),
              ),
            );
          }).toList()),
    );
  }

//................................................
  List<Widget> _aboutMe(context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 08, horizontal: 16),
        child: Text('ABOUT ME'),
      ),
      SizedBox(
        height: 04,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 08, horizontal: 16),
        child: Text(
          profile.user.aboutMe,
          style: TextStyle(
            height: 1.2,
            fontSize: 16,
          ),
        ),
      ),
      SizedBox(
        height: 16,
      ),
    ];
  }

// *****************************************************************************
  Widget _profileImage(context) {
    return Positioned(
      top: 12,
      left: 0,
      right: 0,
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: ExactAssetImage('assets/shared/adel_saad.jpg'),
          ),
        ),
      ),
    );
  }
//================================ CLASS END ===================================
}
