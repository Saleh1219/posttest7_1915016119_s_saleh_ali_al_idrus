import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/checkbox_controller.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/formisi.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/text_controller.dart';
import 'package:get/get.dart';



class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 35, 120, 129),
      body: ListView(
        children: [
          Container(
            width: lebar,
            height: tinggi,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("money.jpg"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    // Container(
                    //   width: 20,
                    //   height: 20,
                    //   margin: EdgeInsets.only(top: 10, left: 20),
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage("back.png"),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(left:20, top:20),
                      child:
                        Text('KeuanganKu',
                          style: GoogleFonts.oswald(
                            textStyle : const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:333),
                      child:
                        Text('"Buat & pantau laporan keuanganmu sendiri"',
                          style: GoogleFonts.oswald(
                            textStyle : const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return HomePage();
                            })
                            );
                          });
                        },
                        child: Container(
                          width: 180,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 35, 120, 129),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Mulai",
                            style: TextStyle(
                              color: Colors.white,
                            ),
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
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 120, 129),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 35, 120, 129),
        title: Center(child: Text("Keuanganku")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 145, 155),
              ),
              child: Text("KeuanganKu"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Form"),
              tileColor: Colors.grey,
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (_){
                   return formisi();
                 }),
                 );
              },
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                margin: EdgeInsets.only(top: 50,left: 20),
                child :
                Text("Saldo",
                style: TextStyle(
                  fontSize: 13,
                 fontWeight: FontWeight.normal,
                  color: Colors.white,  
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child :
                Text("Rp0",
                style: TextStyle(
                  fontSize: 20,
                 fontWeight: FontWeight.normal,
                  color: Colors.white,  
                  ),
                ),
              ),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 140,
                      height: 70,
                      margin: EdgeInsets.only(left: 20, top:30,),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 67, 145, 155),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15,),
                            child:
                              Text('Pemasukkan bulan ini',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5,),
                            child:
                              Text('Rp.0',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 70,
                      margin: EdgeInsets.only(right: 20, top:30),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 67, 145, 155),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15,),
                            child:
                              Text('Pengeluaran bulan ini',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5,),
                            child:
                              Text('Rp.0',
                              style: GoogleFonts.oswald(
                              textStyle : const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        ],

                      ),
                    ),
                    
                  ],
                ),
              Container(
                    width: lebar,
                    height: 300,
                    margin: EdgeInsets.only( top:30,),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 145, 155),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:10,top:5),
                              child:
                                Text('Transaksi terakhir',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right:10,top:5),
                              child:
                                Text('lihat lainnya',
                                style: GoogleFonts.oswald(
                                  textStyle : const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(top: 80,),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                            image: AssetImage("money-bag.png"),
                            ),
                          ),
                        ),
                        Container(
                              margin: EdgeInsets.only(top:5),
                              child:
                                Text('anda belum memasukkan data',
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                        width: 270,
                        height: 50,
                        margin: EdgeInsets.only( top:30,),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 67, 145, 155),
                          borderRadius: BorderRadius.circular(25),
                          
                        ),
                        child:Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (_){
                                      return formisi();
                                    })
                                    );
                                  });
                                },
                                child: Container(
                                  
                                  margin: EdgeInsets.only( left: 50,right: 10),
                                  child :Text('Tambahkan pemasukkan dan pengeluaran',
                                    style: GoogleFonts.oswald(
                                      textStyle : const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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

