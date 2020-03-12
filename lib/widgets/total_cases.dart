import 'package:flutter/material.dart';

class TotalCases extends StatelessWidget {
  final String data;
  final String type;
  final double dataSize;
  final double textSize;

  TotalCases({
    this.data,
    this.type,
    this.dataSize,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.0,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xff131C2F),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Text(
              '$data',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: dataSize,
                color: data == 'NONE' || data == 'NO'
                    ? Colors.greenAccent[100]
                    : int.parse(data.replaceAll(',', '').toString()) >= 10
                        ? Colors.pinkAccent[100]
                        : Colors.greenAccent[100],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '$type',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
