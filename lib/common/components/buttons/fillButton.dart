import 'package:flutter/material.dart';
import 'package:instagram_clone/common/utils/colors.dart';

class FillButton extends StatelessWidget {
  const FillButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.buttonHeight,
    this.buttonWidth,
  });

  final String buttonText;
  final Function onPressed;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.05,
        minWidth: MediaQuery.of(context).size.width * 0.3,
      ),
      child: Material(
        elevation: 3,
        color: blueColor,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () => onPressed,
          child: Center(
            child: Text(buttonText),
          ),
        ),
      ),
    );
  }
}
