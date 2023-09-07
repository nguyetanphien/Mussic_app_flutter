import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomAppBarMusic extends StatefulWidget {
  const BottomAppBarMusic({super.key});

  @override
  State<BottomAppBarMusic> createState() => _BottomAppBarMusicState();
}

class _BottomAppBarMusicState extends State<BottomAppBarMusic> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromRGBO(255, 255, 255, 0.65),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.436c5ea3e5e38a4bfed004056b7d1e69?rik=HzFJk91la5VjWQ&pid=ImgRaw&r=0'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 20,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    children: [
                  TextSpan(
                      text: 'The Last beat\n',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  TextSpan(text: 'Jazz')
                ])),
            IconButton(
              padding: EdgeInsets.only(left: 50),
              icon: Icon(Icons.navigate_before, size: 30, color: Colors.purple),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.play_circle, size: 40, color: Colors.purple),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.navigate_next, size: 30, color: Colors.purple),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
