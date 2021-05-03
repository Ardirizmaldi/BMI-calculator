import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final bool darkMode;
  final double opacity;
  final Function onSelected;
  final Widget childWidget;
  const ContentCard({
    Key key,
    this.darkMode,
    this.opacity,
    this.onSelected,
    this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected ?? () {},
      child: Opacity(
        opacity: opacity ?? 1,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: darkMode ? Color(0xFF1B1B1F) : ThemeData().primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              childWidget,
            ],
          ),
        ),
      ),
    );
  }
}
