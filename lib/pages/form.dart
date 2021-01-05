import 'package:flutter/material.dart';
import 'package:pramagang/pages/register.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      //KITA DETECT MENGGUNAKAN MEDIAQUERY, JIKA SCREEN LANDSCAPE
      //MAKAN AKAN DITAMBAHKAN WIDGET SCROLLING AGAR BISA DISCROLL
      //SELAIN ITU TANPA WIDGET SCROLLING.
      //ContentArea() ADALAH NAMA SEBUAH CLASS BARU
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(child: ContentArea())
          : ContentArea(),
    );
  }
}

class ContentArea extends StatelessWidget {
  const ContentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        //KOMENTAR-1
        FormLogin(),

        //KOMENTAR-2
        Flexible(
          flex:
              1, //KARENA KOMENTAR-1 INGIN KITA BERIKAN PORSI LEBIH BESAR, MAKA BAGIAN INI KITA SET 1
          child: Container(
            margin: const EdgeInsets.all(20),
            //KITA GUNAKAN COLUMN KARENA TERBAGI MENJADI 3 BAGIAN, PERTAMA ADALAH DERETA TOMBOL LOGIN & REMEMBER ME
            //KEDUA ADALAH TEKS SOCIAL LOGIN
            //DAN YANG KETIGA TOMBOL SOCIAL LOGIN
            child: Column(
              children: <Widget>[
                //DERETA PERTAMA TERDIRI DARI 2 BAGIAN, 1 REMEMBER ME DAN SELANJUTNYA ADALAH TOMBOL LOGIN MAKA KITA GUNAKAN ROW UNTUK MENGURUTKANNYA SECARA HORIZONTAL
                Row(
              
                  children: <Widget>[
                    //KEMUDIAN BUAT RAISED BUTTON DENGAN GRADIENT, PENJELASANNYA ADA PADA SUB-BAB PERTAMA
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF13E3D2),
                              Color(0xFF5D74E2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            minHeight: 36.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  
                   RaisedButton(
                      onPressed: () {
                         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage()
        ),
      );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF13E3D2),
                              Color(0xFF5D74E2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            minHeight: 36.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                
                          ),
                             
                ),
                      ),
                    )
                  ],
                ),
              
                //MENAMPILKAN TEKS SOCIAL BUTTON DIBAWAH DERETAN TOMBOL LOGIN
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Social Login",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                //MEMBUAT GARIS
                Divider(),
                //DAN YANG TERAKHIR ADALAH TOMBOL SOCIAL BUTTON YANG DIPISAHKAN DENGAN CLASS BARU LAGI
                SocialButton()
              ],
          
            ),
          ),
        )

//CLASS BARU DISINI
      ],
    );
  }
}

//CLASS BARU DISINI
class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //JADI KITA MENGGUNAKAN FLEXIBLE UNTUK MEMISAHKANNYA MENJADI DUA BAGIAN,
    //PERTAMA ADALAH HEADER DAN FORM, KEDUA ADALAH TOMBOL-TOMBOL NANTINYA
    //KITA KERJAKAN BAGIAN PERTAMA DENGAN FLEX 2 BERARTI PORSINYA LEBIH BESAR
    return Flexible(
      flex: 2,
      //KEMUDIAN MENGGUNAKAN STACK AGAR MUDAH MENGATUR LETAKNNYA SESUAI KEINGINAN
      //KARENA KITA INGIN GAMBAR HEADER DAN FORM LOGIN SALING MEMBELAH
      child: Stack(
        children: <Widget>[
          //SET CONTAINER SEBAGAI BACKGROUND
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          //CONTAINER KEDUA BERISI IMAGE SEPERTI CASE SEBELUMNYA PENJELASANNYA
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('assets/images/nana.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //BAGIAN INI KITA GUNAKAN POSITIONED UNTUK MENGATUR SUDUTNYA, JIKA MASIH BINGUNG SOAL MATERI INI BACA NOTE DIBAWAH.
          Positioned(
            //JARAK DARI ATAS KITA AMBIL DARI HEIGHT DIBAGI 3.6
            top: MediaQuery.of(context).size.height / 3.6,
            //ISINYA ADALAH CONTAINER YANG WIDTHNYA SELEBAR MUNGKIN
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                //LALU CARD KITA SET MARGINNYA 20 DARI CONTAINER
                margin: const EdgeInsets.all(20.0),
                elevation: 8, //KETEBALANNYA
                child: Padding(
                  //KEMUDIAN COLUMN KITA SET LAGI PADDINGNYA DARI CARD
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //BAGIAN PERTAMA ADALAH TEKS FORM LOGIN
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          "Login Form",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      //KEMUDIAN SEBUAH TEKS FIELD UNTUK MENGINPUT EMAIL
                      TextField(
                        //DIMANA DEKORASINYA PADA SIFFUX BERARTI AKHIR BERISI ICON EMAIL BERWARNA PINK
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.pink[200],
                          ),
                          //KETIKA INPUTAN TERSEBUT DIKLIK MAKA AKAN MEMBUAT UNDERLINE
                          focusedBorder: UnderlineInputBorder(
                            //DENGAN BORDER BERWARNA PINK
                            borderSide: BorderSide(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          labelText: "Email: ", //SET LABELNYA
                          //DAN SET STYLE DARI LABEL, CARA KERJANYA SAMA DENGNA TEXT STYLE KETIKA DISEMATKAN PADA TEXT() WIDGET
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //TEXT FIELD UNTUK PASSWORD, ADAPUN PENJELASANNYA SAMA DENGAN CODE DIATAS
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.security,
                            color: Colors.pink[200],
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          labelText: "Password: ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //TERAKHIR ADALAH TEKS UNTUK FORGOT PASSWORD
                      Padding(
                        //PADDINGNYA KITA SET UNTUK JARAK DARI ATAS BAWAH DAN KANAN
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),
                        //KITA GUNAKAN ALIGN UNTUK MENGATUR POSISINYA
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TERDAPAT 4 TOMBOL SOCIAL LOGIN YANG BERDERET SECARA HORIZONTAL
    //MAKA KITA GUNAKAN ROW
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //SET POSISINYA DITENGAH
      children: <Widget>[
        //MASING-MASING TOMBOL MENGGUNAKAN FLATACTIONBUTTON
        //DENGAN CHILD IMAGE DIDALAMNYA
        //KEMUDIAN MARGIN KANANNYA DISET SEBESAR 10 UNTUK MEMBERI JARAK ANTAR TOMBOL
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'assets/images/facebook.png',
            ),
            backgroundColor: Color(0xFF5D74E2),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'assets/images/twitter.png',
            ),
            backgroundColor: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'assets/images/google.png',
            ),
            backgroundColor: Colors.white,
          ),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: () {},
          child: Image.asset(
            'assets/images/linkedin.png',
          ),
          backgroundColor: Color(0xFF5D74E2),
        ),
   
      ],
   
    );
  }
}
