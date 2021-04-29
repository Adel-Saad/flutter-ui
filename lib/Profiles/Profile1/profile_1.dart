import 'package:flutter/material.dart';
import 'package:flutter_profiles_ui/Profiles/Profile1/provider.dart';
import 'package:flutter_profiles_ui/Profiles/Profile1/user.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile profile = Profile1Provider.getProfile();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: 'Abel-Regular'),
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/profiles/profile1.jpg',
              fit: BoxFit.fitWidth,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text('Profile'),
                centerTitle: true,
                actions: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            CustomPaint(
              painter: ShapesPainter(),
              child: Container(),
            ),
            Positioned(
              left: 20,
              top: 180,
              child: CircleAvatar(
                minRadius: 40,
                backgroundImage: ExactAssetImage('assets/shared/adel_saad.jpg'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 16,
              // bottom: 0,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.user.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 08,
                      ),
                      Text(
                        profile.user.address,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 08.0,
                  ),
                  Text(
                    'ABOUT ME',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 08.0,
                  ),
                  _bodyText(context),
                ],
              ),
            ),
            _buildBottomInfoBar(context),
          ],
        ),
      ),
    );
  }

  //------------------------------------------------------------------------------
  Widget _bodyText(context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      width: MediaQuery.of(context).size.width,
      child: Text(
        profile.user.about,
        softWrap: true,
        overflow: TextOverflow.fade,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

//------------------------------------------------------------------------------
  Widget _buildBottomInfoBar(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 24,
      right: 24,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('FOLLOWERS'),
              Text(
                profile.followers.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text('FOLLOWING'),
              Text(
                profile.following.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              Text('FRIENDS'),
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

//------------------------------------------------------------------------------
class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height * 0.35),
      Offset(size.width, size.height * 0.45),
      Offset(size.width, size.height),
      Offset(0, size.height),
    ], true);
    canvas.clipPath(path);
    canvas.drawColor(Colors.white, BlendMode.color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the color property of the paint
    paint.color = Colors.white;
    // create a path
    var path = Path();
    path.lineTo(0, size.height * 0.36);
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
// close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
