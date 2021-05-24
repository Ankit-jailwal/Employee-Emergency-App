import 'package:flutter/widgets.dart';
import 'package:emergencyapp/screens/dashBoard/dashBoard.dart';
import 'package:emergencyapp/screens/signIn/signIn.dart';

final Map<String, WidgetBuilder> routes = {
 dashBoard.routeName: (context) => dashBoard(),
 signIn.routeName: (context) => signIn(),
};
//Changes
