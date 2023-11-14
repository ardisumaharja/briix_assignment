import 'package:flutter/material.dart';

class ButtonSubmitSection extends StatefulWidget {
  const ButtonSubmitSection(
      {super.key, required this.onPress, required this.title});

  final VoidCallback? onPress;
  final String title;

  @override
  State<ButtonSubmitSection> createState() => _ButtonSubmitSectionState();
}

class _ButtonSubmitSectionState extends State<ButtonSubmitSection> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: widget.onPress, child: Text(widget.title));
  }
}
