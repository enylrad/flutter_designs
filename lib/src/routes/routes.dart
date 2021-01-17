import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    BasicPage.route: (BuildContext context) => BasicPage(),
  };
}

String getDefaultRoute() => BasicPage.route;
