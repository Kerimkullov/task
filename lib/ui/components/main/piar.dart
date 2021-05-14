import 'package:flutter/material.dart';

class PiarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, i) {
            return Image.asset("assets/images/main_piar${i + 1}.png");
          }),
    );
  }
}
