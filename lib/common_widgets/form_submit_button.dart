import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
            ),
          ),
          height: 44.0,
          color: Colors.yellow[800],
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
