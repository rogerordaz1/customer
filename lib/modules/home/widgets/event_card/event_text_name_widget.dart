import 'package:flutter/material.dart';

class EventTextName extends StatelessWidget {
  const EventTextName({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontFamily: "Roboto",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color(0xff1a1a1a),
    );

    return Text(
      title,
      style: style,
      textAlign: TextAlign.left,
    );
  }
}
