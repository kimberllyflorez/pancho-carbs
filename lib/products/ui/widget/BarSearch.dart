import 'package:flutter/material.dart';
import 'package:projects_study/palette/palette.dart';

class BarSearch extends StatelessWidget {
  final TextEditingController? controller;

  const BarSearch({Key? key,  this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {

                },
                controller: controller,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Palette.primary),
                  filled: false,
                  hoverColor: Palette.primary,
                  fillColor: Palette.secundary,
                  labelText: "What  are you going to eat",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Palette.primary),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

