import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app_flutter/page/player/bottom_appbar.dart';

import '../player/list_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: const Center(
                  child: Text(
                "Music Player",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ]),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Text("Music App",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text("Album"),
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 8, left: 29),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Top Album",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 243,
                    child: ListView.builder(
                      itemCount: 3,
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(children: [
                          Container(
                            width: 150,
                            height: 20,
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.purple,
                                spreadRadius: 2,
                                blurRadius: 20,
                                offset: Offset(20, 200),
                              )
                            ]),
                          ),
                          Card(
                            child: Container(
                              width: 168,
                              height: 200,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.1CwELIQU6SxLb91wDUldQgHaEc?pid=ImgDet&rs=1'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 0.65),
                              ),
                              child: const ListTile(
                                title: Text(
                                  "Hip Hop",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text("XNSS",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ),
                            ),
                          ),
                        ]);
                      },
                    ),
                  ),
                  const Text(
                    "Recommended",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 400, child: ListViewRe())
                ],
              ),
            ),
          ),
          bottomNavigationBar: const BottomAppBarMusic()),
    );
  }
}
