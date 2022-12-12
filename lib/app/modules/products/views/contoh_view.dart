import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ContohView extends GetView {
  const ContohView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContohView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ContohView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
