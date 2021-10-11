import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final _pages = [
    HomePage(),
    PageWidget(title: 'Players'),
    PageWidget(title: 'Settings'),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apex Players'),
      ),
      body: _pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.keyboard), label: 'Players'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
        currentIndex: _currentIndex,
        onTap: onTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
    );
  }
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
                Container(),
                Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(),
                        Text('Streamer Name'),
                      ],
                    ),
                    Text('Title'),
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

class PageWidget extends StatelessWidget {
  final String title;

  PageWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
