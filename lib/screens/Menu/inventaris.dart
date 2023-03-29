import 'package:flutter/material.dart';

class Inventaris extends StatefulWidget {
  const Inventaris({Key? key}) : super(key: key);

  @override
  State<Inventaris> createState() => _InventarisState();
}

class _InventarisState extends State<Inventaris> {
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
          "Inventaris",
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
                        height: 120,
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Total Nilai Asset", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
                        
                      ], 
                  ),
                  SizedBox(
                        height: 12,
                      ),
                  Text("Rp 128.021.124", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600),),

                  SizedBox(height : 40,),
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
                            child: Icon(Icons.payments, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Penerimaan", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
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
                            child: Icon(Icons.send_rounded, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Pengeluaran", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
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
                            child: Icon(Icons.inventory_2, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Persediaan", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
                        ],
                      ),
                    ),
                ],
              ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Icon(Icons.branding_watermark, color: Colors.lightBlue[900],),
                        padding: EdgeInsets.all(12),
                      ),

                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Asset Tetap", style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                            Text("100 Items", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                          ],
                        ),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("Rp 24.000.000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Icon(Icons.call_to_action, color: Colors.lightBlue[900],),
                        padding: EdgeInsets.all(12),
                      ),

                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Asset Tidak Tetap", style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                            Text("50 Items", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                          ],
                        ),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("Rp 12.151.000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Icon(Icons.settings_input_component_rounded, color: Colors.lightBlue[900],),
                        padding: EdgeInsets.all(12),
                      ),

                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Asset Bergerak", style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                            Text("12 Items", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                          ],
                        ),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("Rp 14.140.000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Icon(Icons.apps_outage, color: Colors.lightBlue[900],),
                        padding: EdgeInsets.all(12),
                      ),

                      SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Asset Tidak Bergerak", style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                            Text("42 Items", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                          ],
                        ),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("Rp 31.310.000", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}