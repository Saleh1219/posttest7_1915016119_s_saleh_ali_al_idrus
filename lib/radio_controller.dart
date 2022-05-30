import 'package:get/get.dart';


class radioGetController extends GetxController{
  List<String> MetodePembayaran = ['Tunai','Kredit/Debit','Transfer Bank','E-Waller'].obs;
  var MPgroup ="".obs;
  onChanged (value) {
    MPgroup(value);
  }
}