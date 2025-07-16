import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
   CustomHeader({super.key, this.leading, this.actionIcon});
  Widget? leading, actionIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [leading ?? Container(), actionIcon ?? Container()],
      ),
    );
  }
}
