import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewRe extends StatefulWidget {
  const ListViewRe({super.key});

  @override
  State<ListViewRe> createState() => _ListViewState();
}

class _ListViewState extends State<ListViewRe> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: <Widget>[
        for (int i = 0; i < 6; i++)
          Column(
            key: ValueKey(i),
            children: [
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadiusDirectional.circular(5)),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://th.bing.com/th/id/R.436c5ea3e5e38a4bfed004056b7d1e69?rik=HzFJk91la5VjWQ&pid=ImgRaw&r=0'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                            TextSpan(text: 'The Last beat\n'),
                            TextSpan(
                                text: 'Jazz',
                                style: TextStyle(fontSize: 12))
                          ])),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text('3:30'),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 43,
                      height: 15,
                      child:
                      Image.asset('asset/icon/three_dots.png'))
                ],
              ),
              Visibility(
                visible: false,
                child: Slider(
                  value: 1,
                  divisions: 60,
                  max: 100,
                  onChanged: (double value) {},
                ),
              )
            ],
          )
      ],
      onReorder: (int oldIndex, int newIndex) {},
    );
  }
}
