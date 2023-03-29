import 'package:flutter/material.dart';

class Surat extends StatefulWidget {
  const Surat({Key? key}) : super(key: key);

  @override
  State<Surat> createState() => _SuratState();
}

class _SuratState extends State<Surat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Surat Masuk & Keluar",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 16,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                    Text("", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),),
                    ],
                  ),
                  SizedBox(height: 90,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                   GestureDetector(
                      onTap: () {
                        final snackBar = SnackBar(
                        duration: const Duration(seconds: 3),
                        backgroundColor: Colors.red,
                        content: const Text('Sorry, menu will be updated soon!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(243, 245, 248, 1),
                              borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                            child: Icon(Icons.mark_email_unread_rounded, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Surat Masuk", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
                        ],
                      ),
                    ),

                   GestureDetector(
                      onTap: () {
                        final snackBar = SnackBar(
                        duration: const Duration(seconds: 3),
                        backgroundColor: Colors.red,
                        content: const Text('Sorry, menu will be updated soon!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(243, 245, 248, 1),
                                borderRadius: BorderRadius.all(Radius.circular(18))
                            ),
                            child: Icon(Icons.mark_email_read_rounded, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Surat Keluar", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        final snackBar = SnackBar(
                        duration: const Duration(seconds: 3),
                        backgroundColor: Colors.red,
                        content: const Text('Sorry, menu will be updated soon!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(243, 245, 248, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(18))
                              ),
                              child: Icon(Icons.announcement_rounded, color: Colors.blue.shade700, size: 30,),
                              padding: EdgeInsets.all(12),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Pengumuman", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
                          ],
                          ),
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
                DraggableScrollableSheet(
                  builder: (context, scrollController){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                      ),
                    child: SingleChildScrollView(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 24,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Transaksi Surat", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19, color: Colors.black),),
                            Text("Lihat Semua", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.blue.shade700),)
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),
                      SizedBox(height: 24,),

                      //Container for buttons
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text("Semua", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.white),),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade700,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),
                            SizedBox(width: 16,),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("Masuk", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: Colors.grey[900]),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),

                            SizedBox(width: 16,),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("Keluar", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 240, 240),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                )
                              ],
                            ),
                          ),

                      SizedBox(height: 25,),
                      //Container Listview for expenses and incomes
                      Container(
                        child: Text("Hari Ini", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),

                      SizedBox(height: 10,),
                      
                      ListView.builder(
                        itemBuilder: (context, index){
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Icon(Icons.mark_email_unread_rounded, color: Colors.lightBlue[900],),
                                  padding: EdgeInsets.all(12),
                                ),

                                SizedBox(width: 16,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Disposisi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                                      Text("Bagian Umum", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                    ],
                                  ),
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("12/PPK/2022", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                    Text("24/06/2022 1:30:00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        shrinkWrap: true,
                        itemCount: 4,
                        padding: EdgeInsets.all(0),
                        controller: ScrollController(keepScrollOffset: false),
                      ),

                      //now expense
                      SizedBox(height: 16,),

                      Container(
                        child: Text("Kemarin", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),

                      SizedBox(height: 16,),

                      ListView.builder(
                        itemBuilder: (context, index){
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Icon(Icons.mark_email_read_rounded, color: Colors.lightBlue[900],),
                                  padding: EdgeInsets.all(12),
                                ),

                                SizedBox(width: 16,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Disposisi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                                      Text("Bagian Keuangan", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                    ],
                                  ),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("12/PPK/2022", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                    Text("24/06/2022 1:30:00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        shrinkWrap: true,
                        itemCount: 4,
                        padding: EdgeInsets.all(0),
                        controller: ScrollController(keepScrollOffset: false),
                      ),

                    ],
                  ),
                  controller: scrollController,
                ),
              );
            },
            initialChildSize: 0.65,
            minChildSize: 0.65,
            maxChildSize: 1,
          )
              ],  
            ),
          ),  
    );
  }
}