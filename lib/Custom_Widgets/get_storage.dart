import 'package:get_storage/get_storage.dart';

final box = GetStorage();

class StorageBox {
  static final StorageBox _instance = StorageBox._internal();
  final GetStorage box;

  factory StorageBox() {
    return _instance;
  }

  StorageBox._internal() : box = GetStorage();
}


/* class StorageSingleton {
  static final StorageSingleton _instance = StorageSingleton._internal();
  final box = GetStorage();

  factory StorageSingleton() {
    return _instance;
  }

  StorageSingleton._internal();
} */
