
// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/90140084?s=400&u=8fc3c3fd0cbbc09e1b203e563ea6ea78eb866fb2&v=4"),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    7,
                  ),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text("search")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(

                height: 100,
                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index)=>BuildStoryItem() ,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
                  itemCount:10 ,

                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder:(context, index) => BuildChatItem(),
                  separatorBuilder:(context, index) => SizedBox(height: 15),
                  itemCount:15,
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget BuildChatItem() =>  Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/90140084?s=400&u=8fc3c3fd0cbbc09e1b203e563ea6ea78eb866fb2&v=4'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Omar Askr',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children:
              [
                Expanded(
                  child: Text(
                    'hello my name is Omar Askr hello my name is Omar Askr',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '02:00 pm',
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget BuildStoryItem()=>Column(


  children: [

  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 30.0,
  backgroundImage: NetworkImage(
  "https://avatars.githubusercontent.com/u/90140084?s=400&u=8fc3c3fd0cbbc09e1b203e563ea6ea78eb866fb2&v=4"),
  ),
  CircleAvatar(
  radius: 8,
  backgroundColor: Colors.white,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  )
  ],
  ),
  SizedBox(
  height: 6,
  ),
  Text(

  "Omar Askr",
  maxLines: 2,
  overflow: TextOverflow.ellipsis ,

  )
  ],
  );

}
