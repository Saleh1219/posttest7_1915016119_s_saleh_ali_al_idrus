import 'package:get/get.dart';

class checkboxGetController extends GetxController{
  var gaji = false.obs;
  var tabungan = false.obs;
  var Utang = false.obs;
  var Penjualan = false.obs;
  onChanged (bool? value) {
    gaji(value);
    tabungan(value);
    Utang(value);
    Penjualan(value);
  }
}