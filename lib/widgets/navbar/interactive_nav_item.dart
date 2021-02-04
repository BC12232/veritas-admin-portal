import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:universal_html/html.dart' as html;

import 'interactive_text.dart';

class InteractiveNavItem extends MouseRegion {
  static final appContainer =
      html.window.document.querySelectorAll('flt-glass-pane')[0];
  //step 5.2 was the text-hover which was skipped.
  InteractiveNavItem(
      {Widget child, String text, String routeName, bool selected})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.cursor = 'default';
          },
          child: InteractiveText(
            text: text,
            routeName: routeName,
            selected: selected,
          ),
        );
}
