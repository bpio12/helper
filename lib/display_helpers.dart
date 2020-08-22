import 'package:scoped_model/scoped_model.dart';
import 'models/helper_model.dart';
import 'package:http/http.dart' as http;

class HelperModel extends Model {
  List<Helper> _helpers = [];

  List<Helper> get helpers {
    return List.from(_helpers);
  }

  void addHelper(Helper helper) {
    _helpers.add(helper);
  }

  void fetchHelpers() {
    http
        .get("https://thehelperapp.000webhostapp.com/get.php")
        .then((http.Response response) {
      print(response);
    });
  }
}
