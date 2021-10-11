import 'package:flutter/material.dart';
import 'package:apex_players/pages/players_page.dart';
import 'package:apex_players/pages/settings_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomePage(),
    PlayersPage(),
    SettingsPage(),
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int _selectedIndex) {
    _pageController.jumpToPage(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PageView よくわかってない！！！　後で要復習
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.keyboard), label: 'Players'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Apex Players'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          SizedBox(
                            width: 13.0,
                          ),
                          Text(
                            'Featured Apex Team',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Fennel',
                            style: TextStyle(
                                fontSize: 33.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Your Live Players',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: <Widget>[
                  YourLivePlayerWidget(),
                  YourLivePlayerWidget(),
                  YourLivePlayerWidget(),
                  YourLivePlayerWidget(),
                  YourLivePlayerWidget(),
                  YourLivePlayerWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class YourLivePlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 72,
                  width: 108,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'TSM_ImperialHal',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Ranked w/Snipe adn Reps.'),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Viewers'),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
