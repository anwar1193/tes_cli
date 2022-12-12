import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {"id": 1, "nama": "Sendal", "harga": 10000},
    {"id": 2, "nama": "Sepatu", "harga": 20000},
    {"id": 3, "nama": "Baju", "harga": 50000}
  ].obs;

  void addProduct(String nama, String harga) {
    if (nama.isNotEmpty && harga.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "nama": nama,
        "harga": int.parse(harga)
      });
      Get.back();
    } else {
      Get.defaultDialog(
        title: "Kesalahan !",
        middleText: "Masih Ada Inputan Kosong!",
      );
    }
  }
}
