import 'package:flutter/material.dart';
import 'package:primer_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack( //Stack es un widget que permite colocar widgets uno encima de otro (en eje Z)
        children: <Widget>[
          ListView( //Para que el contenido se pueda desplazar
            children: <Widget>[
              DescriptionPlace("Duwili Ella", 3.0),
              ReviewList(),
            ],
          ),
        HeaderAppBar(),
        ],
      );
  }
}