import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/checkbox_controller.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/radio_controller.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/text_controller.dart';
import 'package:get/get.dart';

class formisi extends StatelessWidget {
  formisi({Key? key}) : super(key: key);

  Future<void> showInformationDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 67, 145, 155),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Data anda berhasil dimasukkan.")),
                // SizedBox(height: 20),
              ],
            ),
            actions: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  // margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 35, 120, 129),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Selesai",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        });
     }

  final TextGetController myTextController = Get.put(TextGetController());
  final checkboxGetController myCheckboxController = Get.put(checkboxGetController());
  
  
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("pembeli");
    
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 120, 129),
      body: Stack(
        children:[ 
          
          ListView(
            
          children: [
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Container(
                    width: lebar,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 145, 155),
                    ),
                    child: Column(
                      
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(top: 10, left: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("back.png"),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top:8),
                                child:
                                  Text('Transaksi Baru',
                                  style: GoogleFonts.oswald(
                                    textStyle : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right:20,top:8),
                                child:
                                  Text('Saleh',
                                  style: GoogleFonts.oswald(
                                    textStyle : const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 155,
                              height: 40,
                              margin: EdgeInsets.only(left: 20, top:20,),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 35, 120, 129),
                                borderRadius: BorderRadius.circular(25),
                                
                              ),
                              child:  Text('Pemasukkan',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              ),
                            ),
                            Container(
                              width: 155,
                              height: 40,
                              margin: EdgeInsets.only(right: 20, top:20,),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 35, 120, 129),
                                borderRadius: BorderRadius.circular(25),
                                
                              ),
                              child:  Text('pengeluaran',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child:
                          Text('Informasi Transaksi',
                          style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                    
                    child:Column(
                      
                      children: [
                        TextField(
                          controller: myTextController.ControllerNominalPemasukan ,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: new TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 67, 145, 155),
                            
                            hintText: 'nominal transaksi',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 67, 145, 155),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height : 20),
                        TextFormField(
                          controller: myTextController.controllerDeskripsi,
                          maxLines: 3,
                          style: new TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 67, 145, 155),
                            hintText: 'Deskripsi',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 67, 145, 155),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height : 20),
                        Container(
                          margin: EdgeInsets.only(top:10),
                          child:
                            Text('Metode Pembayaran',
                            style: GoogleFonts.oswald(
                                textStyle : const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                        ),
                        SizedBox(height : 20),
                        Column(
                          
                          children: [
                            Container(
                          
                          child:
                            Text('Metode Transaksi',
                            style: GoogleFonts.oswald(
                                textStyle : const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                        ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 10,bottom: 20),
                              child: Column(
                                
                                children: [
                                  Row(
                                    children: [
                                      Obx(() => Checkbox(
                                        
                                        value: myCheckboxController.gaji.value, 
                                        onChanged: (value){
                                            myCheckboxController.gaji(value);
      
                                        },
                                      ),),
                                      Container(
                                        margin: EdgeInsets.only(right: 45),
                                        child: Text("Gaji",
                                          style :GoogleFonts.montserrat(
                                              textStyle : const TextStyle(
                                                fontSize: 12,
                                                
                                                color: Color.fromARGB(255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Obx(() => Checkbox(
                                        value: myCheckboxController.tabungan.value, onChanged: (value){
                                            myCheckboxController.tabungan(value);
                                        },
                                      ),),
                                      Container(
                                        margin: EdgeInsets.only(right: 45),
                                        child: Text("Tabungan",
                                          style :GoogleFonts.montserrat(
                                              textStyle : const TextStyle(
                                                fontSize: 12,
                                                
                                                color: Color.fromARGB(255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Obx(() => Checkbox(
                                        value: myCheckboxController.Utang.value,
                                        onChanged: (value){
                                            myCheckboxController.Utang(value);
                                        },
                                      ),),
                                      Container(
                                        margin: EdgeInsets.only(right: 45),
                                        child: Text("Utang",
                                          style :GoogleFonts.montserrat(
                                              textStyle : const TextStyle(
                                                fontSize: 12,
                                                
                                                color: Color.fromARGB(255, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Obx(() => Checkbox(
                                        value: myCheckboxController.Penjualan.value, onChanged: (value){
                                            myCheckboxController.Penjualan(value);
                                        },
                                      ),),
                                      Text("Penjualan",
                                        style :GoogleFonts.montserrat(
                                            textStyle : const TextStyle(
                                              fontSize: 12,
                                              
                                              color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                ],  
                              ),
                            ),
                            
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () async{
                            await showInformationDialog(context);
      
                            users.add({
                              'nominal pemasukan' : int.tryParse(myTextController.ControllerNominalPemasukan.text),
                              'deskripsi' : myTextController.controllerDeskripsi.text,
                            });
                            
                              myTextController.NominalPemasukan.value = myTextController.ControllerNominalPemasukan.text ;
                              myTextController.Deskripsi.value = myTextController.controllerDeskripsi.text;
                              
                          },
                          child: Text("submit"),
                        ),
                        
                        Obx(() => Text("nominal pemasukan : ${myTextController.NominalPemasukan.value}"),),
                        Obx(() => Text('Deskripsi : ${myTextController.Deskripsi.value}'),),
                        Obx(() => Text('kategori Transaksi: ${myCheckboxController.gaji.value ? "gaji": ""} ${myCheckboxController.tabungan.value ? "tabungan": ""} ${myCheckboxController.Utang.value ? "utang": ""} ${myCheckboxController.Penjualan.value ? "penjualan": ""}'),),
                      ],
                    ),
                    
                  ),
                ],
              ),
              
          ],
          
        ),
        
        ],
      ),
    );
  }
}