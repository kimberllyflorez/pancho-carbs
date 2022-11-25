import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/appbar_question_wd.dart';
import 'package:projects_study/palette/palette.dart';

class HeightPg extends StatefulWidget {
  const HeightPg({Key? key}) : super(key: key);

  @override
  State<HeightPg> createState() => _HeightPgState();
}

class _HeightPgState extends State<HeightPg> {
  late final TextEditingController heightController;

  @override
  void initState() {
    heightController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomBackGround(
              widgets: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 120),
                  child: Text(
                    ' What is your \n height',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: Palette.write,
                    ),
                  ),
                ),
              ],
            ),
            InputTextWd(
              hintText: 'Put your height in here',
              controllerData: heightController,
            ),
            SaveInfoButton(
              function: () =>
                  save(PreferenceConst.height, heightController.text),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> save(String key, String value) async {
    await PreferenceUtils.setString(key, value);
    final height = int.tryParse(value);
    if (height == null) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) => const ValidatedData(
            messageTitle: 'Enter you height'),
      );
    } else if (height <= 20 || height >= 300) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) => const ValidatedData(
            messageTitle: 'In your case you must attend a doctor'),
      );
    } else {
      navigator();
    }
    print(height);
  }
  void navigator (){
    Navigator.pushNamed(context, 'genderPg');

  }
}
