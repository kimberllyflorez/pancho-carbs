import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/pancho_theme/pancho_theme.dart';

class InputTextWd extends StatelessWidget {
  final String? questionPg;
  final TextEditingController? controllerData;
  final String? keyValue;
  final String? hintText;
  final List<TextInputFormatter>? validate;

  const InputTextWd({
    Key? key,
    this.controllerData,
    this.keyValue,
    this.hintText,
    this.validate,
     this.questionPg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionPg ?? ' ',
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Container(
          color: PanchoTheme.write,
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12.0,
          ),
          margin: const EdgeInsets.only(
            bottom: 8.0,
            top: 8.0,
          ),
          child: TextFormField(

            decoration: InputDecoration(
              border: const OutlineInputBorder(
              ),
              hintText: hintText,
            ),
            textAlign: TextAlign.center,
            controller: controllerData,
            onChanged: (value) => onPress(keyValue ?? '', value),
            inputFormatters: validate,
          ),
        ),
      ],
    );
  }

  onPress(String key, value) async {
    await PreferenceUtils.setString(key, value);
  }
}
