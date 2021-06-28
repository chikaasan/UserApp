import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:person/components/user_screen_components/avatar.dart';
import 'package:person/components/user_screen_components/user_contact.dart';
import 'package:person/components/user_screen_components/user_location.dart';
import 'package:person/model.dart/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:person/screens/bloc/user_bloc.dart';


class UserInfo extends StatelessWidget {
  UserInfo({Key key, this.tabController, this.user}) : super(key: key);
  final TabController tabController;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 16),
          Avatar(
            url: user.results[0].picture.large.toString(),
          ),
          SizedBox(height: 16),
          Text(
            user.results[0].name.first.toString() +
                " " +
                user.results[0].name.last.toString(),
            style: Theme.of(context).textTheme.headline5,
          ),

          SizedBox(height: 32),
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            child: TabBar(
              controller: tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.blue,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Contact',
                ),
                Tab(
                  text: 'Location',
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                // first tab bar view widget
                UserContact(user: user),
                // second tab bar view widget
                UserLocation(location: user.results[0].location)
              ],
            ),
          ),
          Container(
            width: 100,
            child: ElevatedButton(
                child: Icon(Icons.replay_outlined),
                onPressed: () =>
                    BlocProvider.of<UserBloc>(context).add(GetUserEvent())),
          ),
          SizedBox(height: 32)
        ],
      ),
    );
  }
}