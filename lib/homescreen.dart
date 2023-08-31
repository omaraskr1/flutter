import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> i = [
      3,
      2,
      1,
      4,
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading: Icon(Icons.menu),
          title: Text("demo"),
          actions: [
            IconButton(
              onPressed: () {
                print("hello");
              },
              icon: Icon(Icons.notification_important),
            ),
            IconButton(
                onPressed: () {
                  print("search");
                },
                icon: Icon(Icons.search)),
          ],
          centerTitle: true,
        ),
        body: Container(
            color: Colors.black26,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          50,
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image(
                          image: NetworkImage(
                            "https://www.hdwallpaper.nu/wp-content/uploads/2015/06/1843513.jpg",
                          ),
                          height: 250,
                          width: 450,
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: 450,
                          color: Colors.black87.withOpacity(.6),
                          //height:50 ,

                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            "Flowers",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
            //  SingleChildScrollView(
            //    child: Column(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //           color: Colors.brown,
            //           child: Text(style: TextStyle(fontSize: 80), "first row")),
            //       Container(
            //           color: Colors.amber,
            //           child: Text(
            //             style: TextStyle(fontSize: 80
            //             ),
            //               "secand row"
            //           )
            //       ),
            //       Container(
            //           color: Colors.brown,
            //           child: Text(style: TextStyle(fontSize: 80), "first row")),
            //       Container(
            //           color: Colors.amber,
            //           child: Text(
            //               style: TextStyle(fontSize: 80
            //               ),
            //               "secand row"
            //           )
            //       ), Container(
            //           color: Colors.brown,
            //           child: Text(style: TextStyle(fontSize: 80), "first row")),
            //       Container(
            //           color: Colors.amber,
            //           child: Text(
            //               style: TextStyle(fontSize: 80
            //               ),
            //               "secand row"
            //           )
            //       ), Container(
            //           color: Colors.brown,
            //           child: Text(style: TextStyle(fontSize: 80), "first row")),
            //       Container(
            //           color: Colors.amber,
            //           child: Text(
            //               style: TextStyle(fontSize: 80
            //               ),
            //               "secand row"
            //           )
            //       ), Container(
            //           color: Colors.brown,
            //           child: Text(style: TextStyle(fontSize: 80), "first row")),
            //       Container(
            //           color: Colors.amber,
            //           child: Text(
            //               style: TextStyle(fontSize: 80
            //               ),
            //               "secand row"
            //           )
            //       ),
            //       // Expanded(
            //       //     child: Container(
            //       //   color: Colors.amber,
            //       //   child: Text(
            //       //     "secand row",
            //       //     style: TextStyle(
            //       //       color: Colors.blue,
            //       //       fontSize: 30,
            //       //     ),
            //       //   ),
            //       // ))
            //     ],
            // ),
            //  ),
            // child: Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         child: Text("first"),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         child: Text("secand"),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         child: Text("third"),
            //       ),
            //     ),
            //   ],
            // ),
            ));
  }
}
