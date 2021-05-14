import 'package:flutter/material.dart';
import 'package:task/constants/texts.dart';

class ReklamContainer extends StatefulWidget {
  ReklamContainer(this.isUpContainer);
  final bool isUpContainer;
  @override
  _ReklamContainer createState() => _ReklamContainer();
}

class _ReklamContainer extends State<ReklamContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 12),
            alignment: Alignment.bottomLeft,
            height: 141,
            width: 339,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/main_${widget.isUpContainer ? "up" : "down"}_image.png"),
              ),
            ),
            child: Text(
              "СОВСЕМ СКОРО",
              style: TaskTextStyles.regular11.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Рекламные кампании",
                    style: TaskTextStyles.bold18,
                  ),
                  Text(
                    "Новое обновление!",
                    style: TaskTextStyles.medium10
                        .copyWith(color: Color(0xffBDBDBD)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
