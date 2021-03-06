import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  final String description;
  final String imgLink;
  final String tagLine;
  final bool isLeft;
  GeneralCard({this.description, this.imgLink, this.tagLine, this.isLeft});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(0),
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),

          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 1.379,
        // height: MediaQuery.of(context).size.width + 10,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imgLink),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              child: Text(
                tagLine,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  isLeft == true
                      ? Container(
                          color: Colors.blue,
                          width: 0,
                          height: 100,
                        )
                      : Container(),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.79,
                    width: MediaQuery.of(context).size.width * 0.7,
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                  isLeft == false
                      ? Container(
                          color: Colors.blue,
                          width: 0,
                          height: 100,
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
