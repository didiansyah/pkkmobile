import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pkkfirdaus/screens/Login/signin_screen.dart';
import 'package:flutter/material.dart';

import 'package:pkkfirdaus/screens/Menu/surat.dart';
import 'package:pkkfirdaus/screens/Menu/kegiatan.dart';
import 'package:pkkfirdaus/screens/Menu/notulen.dart';
import 'package:pkkfirdaus/screens/Menu/keuangan.dart';
import 'package:pkkfirdaus/screens/Menu/inventaris.dart';
import 'package:pkkfirdaus/screens/Menu/anggota.dart';
import 'package:pkkfirdaus/screens/Menu/desa.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hi👋🏻 Administrator",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Welcome back to Dashboard!",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.logout,),
                  alignment: Alignment.topCenter,
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                        print("Signed Out");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignInScreen()));
                      });
                    },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
         Expanded(
          child: GridView.count(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            primary: false,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Surat()));
                  },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/email.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "Surat Masuk & Keluar",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "4 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#bababa"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Kegiatan()));
                  },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/note.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "Kegiatan",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "4 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#bababa"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
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
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/paper.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "Notulen",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "8 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#b2b2b2"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Keuangan()));
                  },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/wallet.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "Keuangan",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "6 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#b2b2b2"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Inventaris()));
                  },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/folder.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "Inventaris",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "2 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#b2b2b2"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Anggota()));
                  },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/care.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "Anggota TP PKK",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "10 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#b2b2b2"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
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
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0.7,
                  margin: EdgeInsets.all(15),
                  child : Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children : <Widget> [
                    Image(
                      image: AssetImage('assets/museum.png')
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    Text(
                      "e-Desa Wisma",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#212121"),
                              fontSize: 15.5,
                              fontWeight: FontWeight.w700,
                              )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "4 Items",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: HexColor("#b2b2b2"),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              )),
                    ),
                    ],
                  ),
                ),
              ),

              ],
            ),
              
         ),
        ],
      ),
    );
  }
}
