import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_product_controller.dart';
import '../../products/controllers/products_controller.dart';

class AddProductView extends GetView<AddProductController> {
  // Panggil Controller ProductsController
  final productC = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProductView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Product Name",
            ),
          ),
          TextField(
            controller: controller.priceC,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Price",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () => productC.addProduct(
              controller.nameC.text,
              controller.priceC.text,
            ),
            child: Text("Simpan Product"),
          ),
        ],
      ),
    );
  }
}
