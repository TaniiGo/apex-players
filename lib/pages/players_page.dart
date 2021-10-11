import 'package:flutter/material.dart';

class PlayersPage extends StatefulWidget {
  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Players Page'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'APAC N'),
              Tab(text: 'APAC A'),
              Tab(text: 'NA'),
              Tab(text: 'SA'),
              Tab(text: 'EMEA'),
            ],
          ),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 0),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
