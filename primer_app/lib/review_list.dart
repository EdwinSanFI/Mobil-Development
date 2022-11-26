import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "All reviews",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              fontFamily: "Lato"
            ),
          ),
          Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
          Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
          Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
          Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photos", "There is an amazing place in Sri Lanka"),
        ],
      ),
    );
  }
}