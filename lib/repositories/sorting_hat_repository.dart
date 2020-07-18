import 'package:harry_potter_app/core/custom_dio.dart';
import 'package:harry_potter_app/core/endpoints.dart';

class SortingHatRepository {
  Future<String> sortingHat() async {
    String url = Endpoints.SORTING_HAT;

    var dio = CustomDio.withAuthentication().instance;

    return await dio.get(url).then((value) {
      return value.data;
    }).catchError((err) {
      return err;
    });
  }
}
