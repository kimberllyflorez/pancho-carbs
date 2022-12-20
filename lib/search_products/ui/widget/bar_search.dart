import 'package:flutter/material.dart';
import 'package:projects_study/pancho_theme/pancho_theme.dart';

class BarSearch extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) function;

  const BarSearch({
    Key? key,
    required this.controller,
    required this.function,
  }) : super(key: key);

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
                onChanged: function,
                controller: controller,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: PanchoTheme.primary),
                  filled: false,
                  hoverColor: PanchoTheme.primary,
                  fillColor: PanchoTheme.secundary,
                  labelText: "What are you going to eat",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: PanchoTheme.primary),
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
