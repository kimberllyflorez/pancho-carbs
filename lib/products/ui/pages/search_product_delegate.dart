

import 'package:flutter/material.dart';

class SearchDelegateCopy extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [const Text('actions')];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return  Text('leading');

  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('result');

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return  Text('suggestions');

  }
  
}