import 'package:flutter/foundation.dart';

class Update with ChangeNotifier {
  List<String> img = [
    'https://i.postimg.cc/sgNrskHF/telkom.jpg'
        'https://i.postimg.cc/13NWVb51/pln.jpg'
        'https://i.postimg.cc/cHTTNSTw/unilever.jpg'
        'https://i.postimg.cc/QCwQXx79/bca.jpg'
        'https://i.postimg.cc/L8ztpS85/indocement.jpg'
  ];

  List<String> getListImages() {
    return img;
  }
}
