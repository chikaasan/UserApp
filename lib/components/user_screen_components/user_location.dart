import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:person/model.dart/user_model.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({Key key, this.location}) : super(key: key);
  final Location location;

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
                "City:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                location.city,
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
                "Street:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                location.street.number.toString(),
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
                "Timezone:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                location.timezone.offset,
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