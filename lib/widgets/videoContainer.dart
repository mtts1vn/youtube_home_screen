import 'package:flutter/material.dart';

class VideoBox extends StatelessWidget {
  const VideoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              child: Column(
            children: [
              Image.network(
                  'https://i.ytimg.com/vi/J72eBE4LLGo/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLDzr9nkufKbqeXvQtiY5dcryvO4VA'),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.cyan,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'video name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                                'Andrezitos . 250mil visualizações . há 2 horas'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  child: PopupMenuButton(
                    iconSize: 30,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Salvar para assistir mais tarde')
                          ],
                        )),
                        PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.download),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Baixar video')
                          ],
                        )),
                        PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.playlist_add),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Salvar na playlist')
                          ],
                        )),
                        PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.share_sharp),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Compartilhar')
                          ],
                        )),
                        PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.flag_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Denunciar')
                          ],
                        )),
                      ];
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
