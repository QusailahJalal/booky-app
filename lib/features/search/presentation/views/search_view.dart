import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefix: Text('Search'),
                suffixIcon: Icon(
                  FontAwesomeIcons.search,
                  color: Colors.white.withAlpha(75),
                ),

                enabledBorder: buildTextFieldBorder(),
                focusedBorder: buildTextFieldBorder(),

                // border: buildTextFieldBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildTextFieldBorder() {
  return OutlineInputBorder(borderSide: BorderSide(color: Colors.white));
}
