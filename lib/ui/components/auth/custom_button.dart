import 'dart:io';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final Function onLongPress;
  final EdgeInsetsGeometry
      padding; //= EdgeInsets.symmetric(vertical: 17.0, horizontal: 50.0);
  final double height;
  final double width;
  final Widget child;
  final Color color;
  final double radius;
  final Color borderColor;
  final bool isActive;
  final List<Color> gradientColor;

  // final List<Color> gradientColor; //= [Color(0xff91D46B), Color(0xff71BF44)];

  CustomButton(
      {@required this.onTap,
      this.onLongPress,
      this.padding,
      this.height = 48.0,
      this.width,
      this.child,
      this.borderColor,
      this.isActive = true,
      this.radius = 10.0,
      this.color,
      this.gradientColor})
      : assert(color != null && gradientColor == null ||
            color == null && gradientColor != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? ((Platform.isIOS ? 375.00 : 360.00) - 32.00),
      height: height,
      child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(radius),
            onLongPress: () => onLongPress != null ? onLongPress() : null,
            onTap: () => onTap != null ? onTap() : null,
            child: Center(child: child),
            // child: Padding(child: child,padding: padding,),
          )),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            // BoxShadow(
            //   color: Colors.black.withAlpha(40),
            //   blurRadius: 12,
            //   offset: Offset(0, 0),

            // ),
          ],
          border: borderColor != null ? Border.all(color: borderColor) : null,
          borderRadius: BorderRadius.circular(radius),
          color: color != null
              ? color
              : this.isActive
                  ? Color(0xff48B654)
                  : Color(0xffB6B6B6),
          gradient: gradientColor != null
              ? LinearGradient(colors: gradientColor)
              : null),
    );
  }
}
