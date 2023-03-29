import 'package:flutter/material.dart';

class Anggota extends StatefulWidget {
  const Anggota({Key? key}) : super(key: key);

  @override
  State<Anggota> createState() => _AnggotaState();
}

class _AnggotaState extends State<Anggota> {
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
          "Anggota TP PKK",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),

      body: Container(
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
                            child: Icon(Icons.task_sharp, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Tugas Pokok", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
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
                            child: Icon(Icons.app_registration_rounded, color: Colors.blue.shade700, size: 30,),
                            padding: EdgeInsets.all(12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Registrasi", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.white70),),
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
                            Text("Daftar Anggota", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19, color: Colors.black),),
                            Text("Lihat Semua", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.blue.shade700),)
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),
                      SizedBox(height: 15,),
                      
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
                                  child: Icon(Icons.supervised_user_circle_rounded, color: Color.fromARGB(255, 211, 211, 211),),
                                  padding: EdgeInsets.all(12),
                                ),

                                SizedBox(width: 15,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Nurjannah", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey[900]),),
                                      Text("Ketua Umum", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                    ],
                                  ),
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("Active", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.green[500]),),
                                    Text("0813 2142 1512", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey[500]),),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        shrinkWrap: true,
                        itemCount: 10,
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