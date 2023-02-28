
import 'package:flutter/material.dart';
class GridViewCustumButton extends StatefulWidget {
  GridViewCustumButton({
    required this.color1,
    required this.name,
    Key? key,
  }) : super(
    key: key,
  );

  late Color color1;
  late String name;
  @override
  State<GridViewCustumButton> createState()
  => _GridViewCustumButtonState();
}
class _GridViewCustumButtonState extends State<GridViewCustumButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
        setState(() {
          if (widget.name == "WO" && widget.color1 == Colors.deepOrange) {
            setState(() {
              widget.name = "F";
              widget.color1 = Colors.indigo;
            });
          } else if (widget.name == "HF" && widget.color1 == Colors.green) {
            setState(() {
              widget.name = "WO";
              widget.color1 = Colors.deepOrange;
            });
          } else if (widget.name == "F" && widget.color1 == Colors.indigo) {
            setState(() {
              widget.name = "HF";
              widget.color1 = Colors.green;
            });
          }
        },);},
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color1,
        ),
        child: Center(
            child: Text(
              widget.name,
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
