import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider{
  List<dynamic> opciones =[];


  _MenuProvider(){
    cargarData();
  }

  cargarData() {
    rootBundle.loadString('data/menu_opts.json')
      .then((data) {
        Map dataMap = json.decode(data);
        print(dataMap);   
      });
  }
}

final menuProvider = new _MenuProvider();

