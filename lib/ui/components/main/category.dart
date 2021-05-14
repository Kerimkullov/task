import 'package:flutter/material.dart';
import 'package:task/constants/texts.dart';

class CategoryContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            height: 124,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.asset(
                "assets/images/main_category${index + 1}.png",
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Реклама',
                style: TaskTextStyles.regular12,
              ),
              Text(
                '106 кампаний',
                style: TaskTextStyles.medium10,
              ),
            ]),
          );
        },
      ),
    );
  }
}
