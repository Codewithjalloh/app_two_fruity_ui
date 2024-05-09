import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: EdgeInsets.all(25),
        child: Text(
          "everyone eats... some eat healthier than other",
          style: TextStyle(color: Colors.grey[600,]),
        ),
      ),
    );
  }
}
