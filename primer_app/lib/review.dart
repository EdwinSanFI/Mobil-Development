import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userDetails,
        userComment
      ],
    );

    final review = Row(
      children: <Widget>[
        photo,
        userInfo
      ],
    );

    return review;
  }
}