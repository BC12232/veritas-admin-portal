import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';

class InteractiveText extends StatefulWidget {
  final String text;
  final String routeName;
  final bool selected;

  const InteractiveText({@required this.text, this.routeName, this.selected});

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child: Text(widget.text,
          style: _hovering
              ? kPageTitleStyle.copyWith(decoration: TextDecoration.underline)
              : (widget.selected)
                  ? kPageTitleStyle.copyWith(fontWeight: FontWeight.bold)
                  : kPageTitleStyle),
    );
  }

//if we're hovering, change the interactiveText style.
  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}
