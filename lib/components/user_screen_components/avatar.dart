import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key key, this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: CircleAvatar(
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}