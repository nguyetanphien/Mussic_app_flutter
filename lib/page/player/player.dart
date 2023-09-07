import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app_flutter/page/player/audio_way.dart';
import 'package:music_app_flutter/page/player/bottom_appbar.dart';

import 'list_view.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Center(
            child: Text(
              'Music Player',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                child: Text('Menu'),
              ),
              ListTile(
                leading: Icon(Icons.album),
                title: Text("Album"),
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 340,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Wrap(children: [
                    Container(
                        width: 190,
                        height: 235,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  'https://th.bing.com/th/id/OIP.1CwELIQU6SxLb91wDUldQgHaEc?pid=ImgDet&rs=1',
                                ),
                                fit: BoxFit.cover),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.amber,
                                  blurRadius: 20,
                                  offset: Offset(1, 10))
                            ]))
                  ])),
            ),
            const SizedBox(height: 22),
            const Center(
                child: Text('Hip Hop',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))),
            const Center(
                child: Text(
              'ABHIFLIX',
              style: TextStyle(color: Colors.black, fontSize: 15),
            )),
            const Audio(),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Recommended',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(height: 129, child: ListViewRe()),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBarMusic(),
      ),
    );
  }
}
