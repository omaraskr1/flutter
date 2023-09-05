import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel{
  final int id;
  final String name;
  final String phone;

  UserModel({
   required this.id,
   required this.phone,
   required this.name,
});
}

class UserScreen extends StatelessWidget {
  List<UserModel> Users =[
    UserModel(id: 1, phone: '+2001203463144', name: 'Omar Askr'),
    UserModel(id: 2, phone: '+2001203463144', name: 'Adel Askr'),
    UserModel(id: 3, phone: '+2001203463144', name: 'Omar Askr'),
    UserModel(id: 1, phone: '+2001203463144', name: 'Omar Askr'),
    UserModel(id: 2, phone: '+2001203463144', name: 'Adel Askr'),
    UserModel(id: 3, phone: '+2001203463144', name: 'Omar Askr'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => BuildUserItem(Users[index]),
          separatorBuilder:(context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: Users.length
      ),
    );
  }
  Widget BuildUserItem(UserModel model)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(

          radius: 25,
          child: Text(
            '${model.id}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              '${model.name}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${model.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
