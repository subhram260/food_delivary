import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  const NewCard({key, this.text, this.height, this.width, this.icon})
      : super(key: key);

  final String text;
  final int height, width;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10),
      // height: 60,
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: Color(0xFFDE3E3F0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        child: Container(
          height: 58,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // Spacer(),
                SizedBox(
                  width: 10,
                ),
                Icon(icon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                ),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
