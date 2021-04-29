import 'package:flutter/material.dart';
import 'package:flutter_profiles_ui/Profiles/profile5/provider5.dart';
import 'package:flutter_profiles_ui/Profiles/profile5/user.dart';

class Profile5 extends StatefulWidget {
  @override
  _Profile5State createState() => _Profile5State();
}

class _Profile5State extends State<Profile5>
    with SingleTickerProviderStateMixin {
  Profile profile = Provider5.getProfile();
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _bodyContent(context),
    );
  }

  Widget _bodyContent(context) {
    return Column(
      children: [
        _profileDetails(context),
        Flexible(child: _tabBarContent(context)),
      ],
    );
  }

  Widget _profileDetails(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: ExactAssetImage('assets/images/profiles/bg4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 08),
          child: Text(
            profile.user.name,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 08),
          child: Text(
            profile.user.profession,
            style: TextStyle(color: Colors.grey),
          ),
        ),
        RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.red,
          textColor: Colors.white,
          onPressed: () {},
          child: Text('FOLLOW'),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _tabBarContent(context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.grey,
            controller: _tabController,
            indicatorWeight: 2,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'PHOTOS',
              ),
              Tab(
                text: 'VIDEOS',
              ),
              Tab(
                text: 'POSTS',
              ),
              Tab(
                text: 'FRIENDS',
              ),
            ],
          ),
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: [
              _photos(context),
              _videos(context),
              _posts(context),
              friends(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _photos(context) {
    return Container(
      padding: EdgeInsets.all(08.0),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 08.0,
        childAspectRatio: 3 / 2,
        children: Provider5.photos().map((e) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(08.0),
              image: DecorationImage(
                image: ExactAssetImage(e),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _videos(context) {
    return Container(
      padding: EdgeInsets.all(08),
      child: GridView.count(
        crossAxisCount: 3,
        // crossAxisSpacing: 08,
        mainAxisSpacing: 08.0,
        childAspectRatio: 3 / 2,

        children: Provider5.videos().map((e) {
          return Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: ExactAssetImage(e),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _posts(context) {
    return Container(
      padding: EdgeInsets.all(08),
      child: GridView.count(
        crossAxisCount: 3,
        // crossAxisSpacing: 08,
        mainAxisSpacing: 08.0,
        childAspectRatio: 3 / 2,
        children: Provider5.posts().map((e) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(e),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget friends(context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        // crossAxisSpacing: 08.0,
        mainAxisSpacing: 08.0,
        children: Provider5.friends().map((e) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(08),
              image: DecorationImage(
                image: ExactAssetImage(e),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
