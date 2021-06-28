import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:person/model.dart/user_model.dart';

class UserContact extends StatelessWidget {
  const UserContact({Key key, this.user}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Пол:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                user.results[0].gender,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          Divider(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Email:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                user.results[0].email,
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          Divider(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phone:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                user.results[0].phone,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          Divider(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}