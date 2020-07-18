import 'package:harry_potter_app/repositories/sorting_hat_repository.dart';

class SortingHatController {

  final SortingHatRepository repository;

  SortingHatController(this.repository);


  Future<String> sortedHat() async {
    return await repository.sortingHat();
  }




}