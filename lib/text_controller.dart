import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextGetController extends GetxController{

  var Deskripsi = "".obs;
  var NominalPemasukan = "".obs;
  

  TextEditingController ControllerNominalPemasukan = TextEditingController();
  TextEditingController controllerDeskripsi = TextEditingController();


@override
  void onClose() {
    ControllerNominalPemasukan.dispose();
    controllerDeskripsi.dispose();
    super.onClose();
  }

void hapusValue(){
  ControllerNominalPemasukan.text = "";
  controllerDeskripsi.text = "";
}
}