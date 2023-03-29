import 'package:flutter/material.dart';

class Keuangan extends StatefulWidget {
  const Keuangan({Key? key}) : super(key: key);

  @override
  State<Keuangan> createState() => _KeuanganState();
}

class _KeuanganState extends State<Keuangan> {
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
          "Keuangan",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 145,
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Total Keuangan", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
                        
                      ], 
                  ),
                  SizedBox(
                        height: 10,
                      ),
                  Text("Rp 58.021.124", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600),),

                  
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
                            Text("Transaksi", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19, color: Colors.black),),
                            Text("Lihat Semua", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.blue.shade700),)
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),

                      SizedBox(height: 24,),

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
                                  Text("Income", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: Colors.grey[900]),),
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
                                      Text("Outcome", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey[900]),),
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

                      SizedBox(height: 24,),
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
                                  child: Icon(Icons.trending_up, color: Colors.lightBlue[900],),
                                  padding: EdgeInsets.all(12),
                                ),

                                SizedBox(width: 16,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Uang Kas", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                                    ],
                                  ),
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("Income", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.green[500]),),
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