import 'package:flutter/material.dart';

class AppElevatedButton extends StatefulWidget {
  const AppElevatedButton({super.key, this.onPressed, required this.options});
  final Function()? onPressed;
  final String options;

  @override
  State<AppElevatedButton> createState() => _AppElevatedButtonState();
}

class _AppElevatedButtonState extends State<AppElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width / 1.5,
        child: ElevatedButton(
         style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          padding: EdgeInsets.all(32),
         ),
          onPressed: widget.onPressed,
          child: Text(widget.options),
        ),
      ),
    );
  }
}

// F7797D